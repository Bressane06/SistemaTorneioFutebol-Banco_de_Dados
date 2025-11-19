-- 1) Retornar a quantidade de gols de um time em uma torneio
CREATE OR REPLACE FUNCTION fn_gols_time_torneio(
    p_id_time INTEGER,
    p_id_torneio INTEGER
)
RETURNS INTEGER AS $$
DECLARE
    v_total_gols INTEGER;
BEGIN
    SELECT COALESCE(gols_pro, 0)
    INTO v_total_gols
    FROM Classificacao
    WHERE id_time = p_id_time
      AND id_torneio = p_id_torneio;

    RETURN v_total_gols;
END;
$$ LANGUAGE plpgsql;

SELECT fn_gols_time_torneio(1, 1);  -- Exemplo de chamada da função

-- 2) Retornar a quantidade de partidas vencidas por um time em um torneio
CREATE OR REPLACE FUNCTION fn_partidas_vencidas_time_torneio(
    p_id_time INTEGER,
    p_id_torneio INTEGER
)
RETURNS INTEGER AS $$
DECLARE
    v_total_vitorias INTEGER;
BEGIN
    SELECT COALESCE(COUNT(*), 0)
    INTO v_total_vitorias
    FROM Partida    
    WHERE id_torneio = p_id_torneio
      AND (
          (id_time_casa = p_id_time AND golsCasa > golsFora) OR
          (id_time_fora = p_id_time AND golsFora > golsCasa)
      );
    RETURN v_total_vitorias;
END;
$$ LANGUAGE plpgsql;

SELECT fn_partidas_vencidas_time_torneio(1, 1);  -- Exemplo de chamada da função

-- 3) Retonar uma tabela com os 10 jogadores com mais gols por um clube
CREATE OR REPLACE FUNCTION fn_top_goleadores_clube(
    p_id_time INTEGER
)
RETURNS TABLE (
    id_jogador INTEGER,
    nome_jogador TEXT,
    total_gols INTEGER
) AS $$
BEGIN
RETURN QUERY    
    -- Seleciona os jogadores e conta seus gols
    SELECT 
        ep.id_jogador,
        CONCAT(p.primeiroNome, ' ', p.ultimoNome) AS nome_jogador,
        COUNT(*)::INTEGER AS total_gols
    FROM EventoPartida AS ep
        JOIN Jogador AS j ON ep.id_jogador = j.id_pessoa
        JOIN Pessoa AS p ON p.id_pessoa = j.id_pessoa
    WHERE ep.tipo_evento = 'GOL'
      AND ep.id_time = p_id_time
    GROUP BY ep.id_jogador, p.primeiroNome, p.ultimoNome
    ORDER BY total_gols DESC
    LIMIT 10;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM fn_top_goleadores_clube(1);  -- Exemplo de chamada da função
