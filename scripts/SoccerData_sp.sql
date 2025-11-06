-- 1) Procedure para cadastrar um novo jogador
CREATE OR REPLACE PROCEDURE CadastrarJogador(
    p_primeiroNome VARCHAR,
    p_nomeMeio VARCHAR,
    p_ultimoNome VARCHAR,
    p_dataNasc DATE,
    p_nacionalidade VARCHAR,
    p_sexo CHAR,
    p_documentoIdentidade VARCHAR, 
    p_posicao VARCHAR,
    p_altura DECIMAL(4,2),
    p_peso DECIMAL(5,2),
    p_perna_dominante VARCHAR,
    p_telefone VARCHAR DEFAULT NULL,
    p_email VARCHAR DEFAULT NULL
)
AS $$
DECLARE
    v_id_pessoa INTEGER;
BEGIN
    -- Verifica se a pessoa já existe pelo documento
    SELECT id_pessoa INTO v_id_pessoa
    FROM Pessoa
    WHERE documentoIdentidade = p_documentoIdentidade
    LIMIT 1;

    -- Se já existe, apenas avisa e sai
    IF v_id_pessoa IS NOT NULL THEN
        RAISE NOTICE 'Já existe no banco de dados. Nenhum cadastro foi realizado.';
        RETURN;
    END IF;

    -- Insere nova pessoa
    INSERT INTO Pessoa (primeiroNome, nomeMeio, ultimoNome, dataNasc, nacionalidade, sexo, documentoIdentidade)
    VALUES (p_primeiroNome, p_nomeMeio, p_ultimoNome, p_dataNasc, p_nacionalidade, p_sexo, p_documentoIdentidade);

    -- Recupera o ID da pessoa recém-cadastrada
    SELECT id_pessoa INTO v_id_pessoa
    FROM Pessoa
    WHERE documentoIdentidade = p_documentoIdentidade
    LIMIT 1;

    -- Insere na tabela Jogador
    INSERT INTO Jogador (id_pessoa, posicao, altura, peso, perna_dominante)
    VALUES (v_id_pessoa, p_posicao, p_altura, p_peso, p_perna_dominante);

    -- (Opcional) Insere telefone
    IF p_telefone IS NOT NULL THEN
        INSERT INTO Telefone_Pessoa (id_pessoa, telefone)
        VALUES (v_id_pessoa, p_telefone);
    END IF;

    --  (Opcional) Insere e-mail
    IF p_email IS NOT NULL THEN
        INSERT INTO Email_Pessoa (id_pessoa, email)
        VALUES (v_id_pessoa, p_email);
    END IF;

    RAISE NOTICE 'Jogador % % (documento: %) cadastrado com ID %.',
        p_primeiroNome, p_ultimoNome, p_documentoIdentidade, v_id_pessoa;
END;
$$ LANGUAGE plpgsql;

-- Chamando a procedure para testar
CALL CadastrarJogador(
    'Gabriel', 'Fiorentino', 'Bressane',
    '1998-05-17',
    'Brasileiro',
    'M',
    '567.890.123-14',  
    'Lateral Direito',
    1.75,
    75.5,
    'Direita',
    '11999999999',
    'gabriel.bressane@email.com'
);

--==================================--

-- 2) 