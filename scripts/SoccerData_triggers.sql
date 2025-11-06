-- 1) Atualizar classificação após partida
CREATE OR REPLACE FUNCTION AtualizarClassificacao()
RETURNS TRIGGER
AS $$
DECLARE
    v_id_torneio INTEGER := NEW.id_torneio;
    v_id_casa INTEGER := NEW.id_time_casa;
    v_id_fora INTEGER := NEW.id_time_fora;
    v_gols_casa INTEGER := NEW.golsCasa;
    v_gols_fora INTEGER := NEW.golsFora;
BEGIN
    -- Só processa se o status for "Encerrada"
    IF NEW.status = 'Encerrada' THEN
        -- Atualiza a linha de classificação de cada time
        -- Casa
        UPDATE Classificacao
        SET jogos = jogos + 1,
            gols_pro = gols_pro + v_gols_casa,
            gols_contra = gols_contra + v_gols_fora,
            saldo_gols = (gols_pro + v_gols_casa) - (gols_contra + v_gols_fora)
        WHERE id_torneio = v_id_torneio 
            AND id_time = v_id_casa;

        -- Fora
        UPDATE Classificacao
        SET jogos = jogos + 1,
            gols_pro = gols_pro + v_gols_fora,
            gols_contra = gols_contra + v_gols_casa,
            saldo_gols = (gols_pro + v_gols_fora) - (gols_contra + v_gols_casa)
        WHERE id_torneio = v_id_torneio 
            AND id_time = v_id_fora;

        -- Determina resultado e atualiza pontuação
        IF v_gols_casa > v_gols_fora THEN
            -- time que jogou em casa venceu
            UPDATE Classificacao
            SET vitorias = vitorias + 1,
                pontos = pontos + 3
            WHERE id_torneio = v_id_torneio 
                AND id_time = v_id_casa;

            -- time que jogou fora perdeu
            UPDATE Classificacao
            SET derrotas = derrotas + 1
            WHERE id_torneio = v_id_torneio 
                AND id_time = v_id_fora;

        ELSIF v_gols_casa < v_gols_fora THEN
            -- time que jogou fora venceu
            UPDATE Classificacao
            SET vitorias = vitorias + 1,
                pontos = pontos + 3
            WHERE id_torneio = v_id_torneio 
                AND id_time = v_id_fora;

            -- time que jogou em casa perdeu
            UPDATE Classificacao
            SET derrotas = derrotas + 1
            WHERE id_torneio = v_id_torneio 
                AND id_time = v_id_casa;

        ELSE
            -- empate
            UPDATE Classificacao
            SET empates = empates + 1,
                pontos = pontos + 1
            WHERE id_torneio = v_id_torneio 
                AND id_time IN (v_id_casa, v_id_fora);
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Chamando a trigger após atualização do status da partida
CREATE TRIGGER trg_atualizar_classificacao
AFTER UPDATE OF status ON Partida
FOR EACH ROW
WHEN (NEW.status = 'Encerrada')
EXECUTE FUNCTION AtualizarClassificacao();

--==================================--

-- 2) Impedir duplo vínculo de jogador em times diferentes
CREATE OR REPLACE FUNCTION ImpedirDuploVinculo()
RETURNS TRIGGER AS $$
DECLARE
    v_ativo INTEGER;
BEGIN
    SELECT COUNT(*) INTO v_ativo
    FROM Elenco
    WHERE id_jogador = NEW.id_jogador AND dataFim IS NULL;

    IF v_ativo > 0 THEN
        RAISE EXCEPTION 'Jogador % já possui vínculo ativo em outro time.', NEW.id_jogador;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criando a trigger para impedir duplo vínculo
CREATE TRIGGER trg_impedir_duplo_vinculo
BEFORE INSERT ON Elenco
FOR EACH ROW
EXECUTE FUNCTION ImpedirDuploVinculo();

--==================================

-- 3) Validar evento de partida somente se a partida estiver em andamento ou encerrada
CREATE OR REPLACE FUNCTION ValidarEventoPartida()
RETURNS TRIGGER AS $$
DECLARE
    v_status VARCHAR(50);
BEGIN
    SELECT status INTO v_status FROM Partida WHERE id_partida = NEW.id_partida;

    IF v_status = 'Agendada' THEN
        RAISE EXCEPTION 'Não é possível registrar eventos antes da partida começar (status atual: %)', v_status;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criando a trigger para validar evento de partida
CREATE TRIGGER trg_validar_evento_partida
BEFORE INSERT ON EventoPartida
FOR EACH ROW
EXECUTE FUNCTION ValidarEventoPartida();
