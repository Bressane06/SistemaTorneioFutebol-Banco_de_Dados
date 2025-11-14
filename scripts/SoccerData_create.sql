-- Pessoa
CREATE TABLE Pessoa (
    id_pessoa INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    primeiroNome VARCHAR(50) NOT NULL,
    nomeMeio VARCHAR(50),
    ultimoNome VARCHAR(50) NOT NULL,
    dataNasc DATE NOT NULL,
    documentoIdentidade VARCHAR(20) UNIQUE,
    nacionalidade VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL CHECK (sexo IN ('M', 'F'))
);

-- Telefone_Pessoa
CREATE TABLE Telefone_Pessoa (
	id_pessoa INTEGER NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	PRIMARY KEY (id_pessoa, telefone),
	FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Email_Pessoa
CREATE TABLE Email_Pessoa (
    id_pessoa INTEGER NOT NULL,
    email VARCHAR(60) NOT NULL,
    PRIMARY KEY (id_pessoa, email),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Árbitro
CREATE TABLE Arbitro (
    id_pessoa INTEGER PRIMARY KEY,
    federacao VARCHAR(60) NOT NULL,
    tipoLicenca VARCHAR(50) NOT NULL,
    status VARCHAR(50) CHECK (status IN ('Ativo', 'Suspenso', 'Aposentado')) DEFAULT 'Ativo',
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Jogador
CREATE TABLE Jogador (
    id_pessoa INTEGER PRIMARY KEY,
    posicao VARCHAR(50) NOT NULL CHECK (posicao IN (
        'Goleiro',
        'Zagueiro', 
        'Lateral Direito',
        'Lateral Esquerdo',
        'Volante',
        'Meia Atacante',
        'Meia Central',
        'Ponta Direita',
        'Ponta Esquerda',
        'Centroavante',
        'Segundo Atacante'
    )),
    altura DECIMAL(4,2) NOT NULL,
    peso DECIMAL(5,2) NOT NULL, 
    perna_dominante VARCHAR(50) NOT NULL CHECK (perna_dominante IN ('Direita', 'Esquerda', 'Ambas')),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);


-- Treinador
CREATE TABLE Treinador (
    id_pessoa INTEGER PRIMARY KEY,
    tipoLicenca VARCHAR(50) NOT NULL,
    numeroLicenca INTEGER NOT NULL UNIQUE,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

-- Time
-- OBS: Substituí SERIAL por GENERATED AS IDENTITY,
-- pois PostgreSQL 15+ removeu o suporte ao tipo SERIAL.
CREATE TABLE Time (
    id_time INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sigla VARCHAR(3) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL CHECK (tipo IN ('Clube', 'Seleção Nacional')),
    categoria VARCHAR(50) NOT NULL CHECK (categoria IN ('Profissional', 'Amador', 'Base')),
    genero VARCHAR(50) NOT NULL CHECK (genero IN ('Masculino', 'Feminino')),
    faixa_etaria VARCHAR(50) CHECK (faixa_etaria IN ('Principal', 'Sub-20', 'Sub-17', 'Sub-15')),
    dataFundacao DATE NOT NULL
);
-- Comissão Técnica
CREATE TABLE ComissaoTecnica (
    id_time INTEGER NOT NULL,
    id_pessoa INTEGER NOT NULL,
    funcao VARCHAR(50) NOT NULL CHECK (funcao IN ('Treinador', 'Auxiliar Técnico', 'Massagista', 'Preparador Físico')),
    dataInicio DATE NOT NULL,
    dataFim DATE,
    PRIMARY KEY (id_time, id_pessoa, funcao),
    FOREIGN KEY (id_time) REFERENCES Time(id_time),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);


-- Elenco
CREATE TABLE Elenco (
    id_elenco INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_time INTEGER NOT NULL,
    id_jogador INTEGER NOT NULL,
    numeroCamisa INTEGER NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE,
    UNIQUE (id_time, id_jogador),
    FOREIGN KEY (id_time) REFERENCES Time(id_time),
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id_pessoa)
);

-- Torneio
CREATE TABLE Torneio (
    id_torneio INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    tipo VARCHAR(50) NOT NULL CHECK (tipo IN ('Pontos Corridos', 'Mata-Mata', 'Grupos', 'Amistoso')),
    ano INTEGER NOT NULL,
    pais VARCHAR(50) NOT NULL,
    genero VARCHAR(50) NOT NULL CHECK (genero IN ('Masculino', 'Feminino')),
    faixa_etaria VARCHAR(50) CHECK (faixa_etaria IN ('Principal', 'Sub-20', 'Sub-17', 'Sub-15')),
    status VARCHAR(50) NOT NULL CHECK (status IN ('Ativo', 'Encerrado')) DEFAULT 'Ativo'
);

-- Estadio
CREATE TABLE Estadio (
    idEstadio INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    capacidade INTEGER NOT NULL,
    dono VARCHAR(100) NOT NULL
);

-- Arbitragem
CREATE TABLE Arbitragem (
    id_arbitragem INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_arbitro_principal INTEGER NOT NULL,
    id_arbitro_assistente1 INTEGER NOT NULL, 
    id_arbitro_assistente2 INTEGER NOT NULL,
    id_quarto_arbitro INTEGER NOT NULL,
    FOREIGN KEY (id_arbitro_principal) REFERENCES Arbitro(id_pessoa),
    FOREIGN KEY (id_arbitro_assistente1) REFERENCES Arbitro(id_pessoa),
    FOREIGN KEY (id_arbitro_assistente2) REFERENCES Arbitro(id_pessoa),
    FOREIGN KEY (id_quarto_arbitro) REFERENCES Arbitro(id_pessoa)
);

-- Partida
CREATE TABLE Partida (
    id_partida INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_torneio INTEGER NOT NULL,
    id_estadio INTEGER NOT NULL,
    id_time_casa INTEGER NOT NULL,
    id_time_fora INTEGER NOT NULL,
    id_arbitragem INTEGER NOT NULL,
    dataPartida TIMESTAMP NOT NULL,
    fase VARCHAR(50) NOT NULL CHECK (fase IN ('Primeiro Turno', 'Segundo Turno', 'Oitavas', 'Quartas', 'Semi', 'Final')),
    rodada INTEGER NOT NULL,
    golsCasa INTEGER NOT NULL DEFAULT 0,
    golsFora INTEGER NOT NULL DEFAULT 0,
    status VARCHAR(50) CHECK(status IN ('Agendada', 'Em andamento', 'Encerrada', 'Cancelada')) NOT NULL DEFAULT 'Agendada',
    publico INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (id_torneio) REFERENCES Torneio(id_torneio),
    FOREIGN KEY (id_estadio) REFERENCES Estadio(idEstadio),
    FOREIGN KEY (id_time_casa) REFERENCES Time(id_time),
    FOREIGN KEY (id_time_fora) REFERENCES Time(id_time),
    FOREIGN KEY (id_arbitragem) REFERENCES Arbitragem(id_arbitragem)
);

-- EventoPartida
CREATE TABLE EventoPartida (
    id_partida INTEGER NOT NULL,
    numero_evento INTEGER NOT NULL,
    id_jogador INTEGER NOT NULL,
    id_time INTEGER NOT NULL,
    tipo_evento VARCHAR(30) NOT NULL CHECK (tipo_evento IN (
        'GOL', 'GOL_CONTRA', 'PENALTI_MARCADO', 'PENALTI_PERDIDO',
        'CARTAO_AMARELO', 'CARTAO_VERMELHO',
        'SUBSTITUICAO_ENTRADA', 'SUBSTITUICAO_SAIDA'
    )),
    minuto INTEGER NOT NULL CHECK (minuto >= 0 AND minuto <= 120),
    PRIMARY KEY (id_partida, numero_evento),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida) ON DELETE CASCADE,
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id_pessoa),
    FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

-- Classificacao
CREATE TABLE Classificacao (
    id_classificacao INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_torneio INTEGER NOT NULL,
    id_time INTEGER NOT NULL,
    jogos INTEGER NOT NULL CHECK (jogos >= 0) DEFAULT 0,
    vitorias INTEGER NOT NULL CHECK (vitorias >= 0) DEFAULT 0,
    empates INTEGER NOT NULL CHECK (empates >= 0) DEFAULT 0,
    derrotas INTEGER NOT NULL CHECK (derrotas >= 0) DEFAULT 0,
    gols_pro INTEGER NOT NULL CHECK (gols_pro >= 0) DEFAULT 0,
    gols_contra INTEGER NOT NULL CHECK (gols_contra >= 0) DEFAULT 0,
    saldo_gols INTEGER NOT NULL DEFAULT 0,
    pontos INTEGER NOT NULL CHECK (pontos >= 0) DEFAULT 0,
    FOREIGN KEY (id_torneio) REFERENCES Torneio(id_torneio),
    FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

-- Escalacao_time
CREATE TABLE Escalacao_time (
    id_partida INTEGER NOT NULL,
    id_jogador INTEGER NOT NULL,
    titular BOOLEAN NOT NULL,
    PRIMARY KEY (id_partida, id_jogador),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida) ON DELETE CASCADE,
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id_pessoa)
);