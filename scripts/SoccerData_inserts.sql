-- 1; povoar a tabela Pessoa
-- Inserção manual de 30 pessoas. Observação: id_pessoa é GENERATED ALWAYS AS IDENTITY; aqui inserimos apenas os campos NOT NULL.
INSERT INTO Pessoa (primeiroNome, nomeMeio, ultimoNome, dataNasc, nacionalidade, sexo, documentoIdentidade) VALUES
-- Jogadores 1..30 (todos brasileiros)
('Neymar','Junior','Santos','1992-02-05','Brasil','M','123.456.789-00'),
('Philippe','Coutinho','Correia','1992-06-12','Brasil','M','234.567.890-11'),
('Vinicius','Junior','Santos','2000-07-12','Brasil','M','345.678.901-22'),
('Casemiro','Gabriel','Silva','1992-02-23','Brasil','M','456.789.012-33'),
('Gabriel','Jesus','Nascimento','1997-04-03','Brasil','M','567.890.123-44'),
('Rodrygo','Goes','Silva','2001-01-09','Brasil','M','678.901.234-55'),
('Arthur','Melo','Nascimento','1996-08-12','Brasil','M','789.012.345-66'),
('Raphinha','de Oliveira','Nascimento','1996-12-14','Brasil','M','890.123.456-77'),
('Alex','Sandro','Lima','1991-01-26','Brasil','M','901.234.567-88'),
('Thiago','Alcantara','do Nascimento','1991-04-11','Brasil','M','012.345.678-99'),
('Fred','Rodrigues','Silva','1993-03-05','Brasil','M','123.456.789-01'),
('Gabriel','Barbosa','de Oliveira','1996-08-30','Brasil','M','234.567.890-12'),
('Marquinhos','Marcos','Silva','1994-05-14','Brasil','M','345.678.901-23'),
('Diego','Costa','da Silva','1988-10-07','Brasil','M','456.789.012-34'),
('Willian','Gomes','de S.','1988-08-09','Brasil','M','567.890.123-45'),

('Marta','Vieira','Silva','1986-02-19','Brasil','F','678.901.234-56'),
('Debinha','Miri','Silva','1991-10-20','Brasil','F','789.012.345-67'),
('Andressa','Alves','Silva','1992-06-10','Brasil','F','890.123.456-78'),
('Formiga','','de Souza','1981-03-03','Brasil','F','901.234.567-89'),
('Cristiane','Rozeira','de Souza','1985-05-15','Brasil','F','012.345.678-90'),
('Bia','Zaneratto','da Silva','1993-05-17','Brasil','F','123.456.789-02'),
('Giovana','Queiroz','','1996-11-10','Brasil','F','234.567.890-13'),
('Tamires','Cunha','da Silva','1987-05-10','Brasil','F','345.678.901-24'),
('Fabiana','','Silva','1989-03-15','Brasil','F','456.789.012-35'),
('Beatriz','','Batista','1998-08-22','Brasil','F','567.890.123-46'),
('Lucas','','Paquetá','1997-08-27','Brasil','M','678.901.234-57'),
('Richarlison','','Andrade','1997-05-10','Brasil','M','789.012.345-68'),
('Bruno','','Guimarães','1997-11-16','Brasil','M','890.123.456-79'),
('Antony','','Santos','2000-02-24','Brasil','M','901.234.567-80'),
('Matheus','','Cunha','1999-05-27','Brasil','M','012.345.678-91'),
-- Árbitros 31...60
('Wilton','Pereira','Sampaio','1981-12-28','Brasil','M','123.456.789-03'),
('Raphael','Claus','Silva','1979-09-06','Brasil','M','234.567.890-14'),
('Anderson','Daronco','Santos','1981-01-06','Brasil','M','345.678.901-25'),
('Braulio','Silva','Machado','1979-03-13','Brasil','M','456.789.012-36'),
('Wagner','Reway','Nascimento','1981-07-03','Brasil','M','567.890.123-47'),
('Luiz','Flavio','Oliveira','1977-10-13','Brasil','M','678.901.234-58'),
('Bruno','Arleu','Araujo','1986-08-12','Brasil','M','789.012.345-69'),
('Rodolpho','Toski','Marques','1978-04-26','Brasil','M','890.123.456-70'),
('Savio','Pereira','Sampaio','1984-09-21','Brasil','M','901.234.567-81'),
('Ramon','Abatti','Abel','1987-05-30','Brasil','M','012.345.678-92'),
('Flavio','Rodrigues','Souza','1980-11-05','Brasil','M','123.456.789-04'),
('Jean','Pierre','Lima','1982-07-16','Brasil','M','234.567.890-15'),
('Rafael','Traci','Silva','1983-02-28','Brasil','M','345.678.901-26'),
('Edina','Alves','Batista','1980-01-10','Brasil','F','456.789.012-37'),
('Daiane','Muniz','Santos','1984-11-20','Brasil','F','567.890.123-48'),
('Neuza','Ines','Back','1969-04-11','Brasil','F','678.901.234-59'),
('Leila','Cruz','Araujo','1982-06-15','Brasil','F','789.012.345-60'),
('Rejane','Caetano','Silva','1981-08-22','Brasil','F','890.123.456-71'),
('Deborah','Cecilia','Cruz','1980-03-17','Brasil','F','901.234.567-82'),
('Thayslane','Costa','Oliveira','1985-09-08','Brasil','F','012.345.678-93'),
('Igor','Junio','Benevenuto','1989-12-14','Brasil','M','123.456.789-05'),
('Paulo','Cesar','Zanovelli','1977-05-19','Brasil','M','234.567.890-16'),
('Vinicius','Goncalves','Dias','1983-10-25','Brasil','M','345.678.901-27'),
('Emerson','Ricardo','Almeida','1982-04-30','Brasil','M','456.789.012-38'),
('Dewson','Fernando','Freitas','1981-07-12','Brasil','M','567.890.123-49'),
('Marcelo','Carvalho','Souza','1978-03-08','Brasil','M','678.901.234-50'),
('Jefferson','Ferreira','Lima','1980-06-22','Brasil','M','789.012.345-61'),
('Andre','Luiz','Castro','1975-11-15','Brasil','M','890.123.456-72'),
('Caio','Max','Augusto','1981-09-03','Brasil','M','901.234.567-83'),
('Dyorgines','Jose','Padovani','1979-08-17','Brasil','M','012.345.678-94'),
--Treinadores 61...90
('Abel',null,'Ferreira','1971-10-22','Brasil','M','123.456.789-06'),
('Tite',null,'Cerezo','1961-05-25','Brasil','M','234.567.890-17'),
('Mano',null,'Menezes','1962-06-17','Brasil','M','345.678.901-28'),
('Vanderlei',null,'Lugano','1979-08-02','Brasil','M','456.789.012-39'),
('Renato',null,'Gaúcho','1962-09-10','Brasil','M','567.890.123-40'),
('Felipe',null,'Scolari','1948-11-09','Brasil','M','678.901.234-51'),
('Zé',null,'Ricardo','1965-12-15','Brasil','M','789.012.345-62'),
('Cuca',null,'Silveira','1963-06-07','Brasil','M','890.123.456-73'),
('Jorge',null,'Jesus','1954-07-24','Portugal','M','901.234.567-84'),
('Bruno',null,'Lage','1980-11-12','Portugal','M','012.345.678-95'),
('Rui',null,'Vitória','1967-10-16','Portugal','M','123.456.789-07'),
('Sérgio',null,'Conceição','1974-11-15','Portugal','M','234.567.890-18'),
('Paulo',null,'Fonseca','1973-03-05','Portugal','M','345.678.901-29'),
('Carlos',null,'Carvalhal','1965-12-28','Portugal','M','456.789.012-30'),
('Nuno',null,'Espírito Santo','1974-01-25','Portugal','M','567.890.123-41'),
('Vítor',null,'Pereira','1968-08-26','Portugal','M','678.901.234-52'),
('Jesualdo',null,'Faria','1948-05-25','Portugal','M','789.012.345-63'),
('Pedro',null,'Caixinha','1970-11-15','Portugal','M','890.123.456-74'),
('Miguel',null,'Cardoso','1972-01-29','Portugal','M','901.234.567-85'),
('Sérgio',null,'Vieira','1976-06-22','Portugal','M','012.345.678-96'),
('Luís',null,'Castro','1972-03-03','Portugal','M','123.456.789-08'),
('Hélder',null,'Cristóvão','1962-02-17','Portugal','M','234.567.890-19'),
('José',null,'Couceiro','1962-04-14','Portugal','M','345.678.901-20'),
('António', null, 'Oliveira', '1952-02-18', 'Portugal', 'M','456.789.012-31'),
('Fernando', null, 'Santos', '1954-10-24', 'Portugal', 'M','567.890.123-42'),
('Carlos', null, 'Queiroz', '1953-03-12', 'Portugal', 'M','678.901.234-53'),
('Paulo',null,'Bento','1966-11-20','Portugal','M','789.012.345-64'),
('Luís',null,'Campos','1964-02-28','Portugal','M','890.123.456-75'),
('Rui',null,'Jorge','1967-10-27','Portugal','M','901.234.567-86'),
--Funcionarios comisão técnica 91...120
('José','Carlos','Oliveira','1975-04-15','Brasil','M','012.345.678-97'),
('Maria','Antônia','Santos','1980-08-22','Brasil','F','123.456.789-09'), 
('Roberto','Silva','Lima','1972-11-30','Brasil','M','234.567.890-10'),
('Ana','Paula','Costa','1983-02-18','Brasil','F','345.678.901-21'),
('Francisco','José','Pereira','1970-06-25','Brasil','M','456.789.012-32'),
('Sandra','Regina','Ferreira','1978-09-14','Brasil','F','567.890.123-43'),
('Marcos','Antonio','Souza','1968-12-03','Brasil','M','678.901.234-54'),
('Lucia','Maria','Rodrigues','1982-05-20','Brasil','F','789.012.345-65'),
('Paulo','Roberto','Santos','1973-07-11','Brasil','M','890.123.456-76'),
('Cristina','Silva','Lima','1977-10-28','Brasil','F','901.234.567-87'),
('Antonio','Carlos','Costa','1969-03-17','Brasil','M','012.345.678-98'),
('Regina','Santos','Oliveira','1981-01-09','Brasil','F','123.456.789-10'),
('Jorge','Luis','Ferreira','1974-08-26','Brasil','M','234.567.890-21'),
('Amanda','Costa','Silva','1979-12-05','Brasil','F','345.678.901-32'),
('Carlos','Alberto','Lima','1971-04-23','Brasil','M','456.789.012-43'),
('Patricia','Regina','Santos','1976-11-14','Brasil','F','567.890.123-54'),
('Marcelo','José','Oliveira','1984-02-07','Brasil','M','678.901.234-65'),
('Fernanda','Silva','Costa','1973-09-30','Brasil','F','789.012.345-76'),
('Ricardo','Antonio','Pereira','1980-05-19','Brasil','M','890.123.456-87'),
('Juliana','Maria','Lima','1975-10-12','Brasil','F','901.234.567-98'),
('Eduardo','Santos','Silva','1972-06-28','Brasil','M','012.345.678-09'),
('Beatriz','Costa','Ferreira','1978-03-15','Brasil','F','123.456.789-21'),
('Rodrigo','Lima','Oliveira','1983-07-24','Brasil','M','234.567.890-32'),
('Carla','Santos','Pereira','1974-12-11','Brasil','F','345.678.901-43'),
('Felipe','Silva','Costa','1981-04-06','Brasil','M','456.789.012-54'),
('Monica','Regina','Lima','1977-08-29','Brasil','F','567.890.123-65'),
('Alexandre','José','Santos','1970-01-13','Brasil','M','678.901.234-76'),
('Luciana','Costa','Silva','1982-06-22','Brasil','F','789.012.345-87'),
('Daniel','Antonio','Oliveira','1976-09-09','Brasil','M','890.123.456-98'),
('Andrea','Maria','Pereira','1979-11-26','Brasil','F','901.234.567-09');

-- 2; povoar a tabela Arbitro
INSERT INTO Arbitro (id_pessoa, federacao, tipoLicenca, status) VALUES
(31,'CBF','Nacional','Ativo'),
(32,'CBF','Nacional','Ativo'),
(33,'CONMEBOL','Internacional','Ativo'),
(34,'CBF','Regional','Ativo'),
(35,'FIFA','Internacional','Ativo'),
(36,'CBF','Nacional','Ativo'),
(37,'CBF','Nacional','Ativo'),
(38,'UEFA','Internacional','Ativo'),
(39,'CBF','Nacional','Suspenso'),
(40,'CBF','Nacional','Ativo'),
(41,'CONMEBOL','Internacional','Ativo'),
(42,'CBF','Regional','Ativo'),
(43,'CBF','Nacional','Aposentado'),
(44,'CBF','Nacional','Ativo'),
(45,'FIFA','Internacional','Ativo'),
(46,'CBF','Regional','Ativo'),
(47,'CBF','Nacional','Ativo'),
(48,'UEFA','Internacional','Ativo'),
(49,'CBF','Nacional','Ativo'),
(50,'CBF','Nacional','Ativo'),
(51,'CONMEBOL','Internacional','Ativo'),
(52,'CBF','Regional','Ativo'),
(53,'CBF','Nacional','Ativo'),
(54,'FIFA','Internacional','Ativo'),
(55,'CBF','Nacional','Ativo'),
(56,'UEFA','Internacional','Ativo'),
(57,'CBF','Nacional','Ativo'),
(58,'CBF','Regional','Suspenso'),
(59,'CONMEBOL','Internacional','Ativo'),
(60,'CBF','Nacional','Ativo');

-- Jogadores Masculinos
INSERT INTO Jogador (id_pessoa, posicao, altura, peso, perna_dominante) VALUES
(1, 'Ponta Direita', 1.75, 68.0, 'Direita'),       -- Neymar
(2, 'Meia Atacante', 1.72, 66.0, 'Esquerda'),      -- Philippe Coutinho
(3, 'Ponta Esquerda', 1.76, 72.0, 'Direita'),      -- Vinicius Junior
(4, 'Volante', 1.85, 81.0, 'Direita'),             -- Casemiro
(5, 'Centroavante', 1.75, 70.0, 'Direita'),        -- Gabriel Jesus
(6, 'Ponta Direita', 1.77, 72.0, 'Direita'),       -- Rodrygo
(7, 'Meia Atacante', 1.81, 70.0, 'Direita'),       -- Arthur
(8, 'Centroavante', 1.80, 68.0, 'Direita'),        -- Raphinha
(9, 'Zagueiro', 1.83, 75.0, 'Direita'),            -- Alex Sandro
(10, 'Meia Central', 1.78, 70.0, 'Direita'),       -- Thiago Alcantara
(11, 'Meia Central', 1.72, 66.0, 'Direita'),       -- Fred
(12, 'Centroavante', 1.78, 67.0, 'Direita'),       -- Gabriel Barbosa
(13, 'Zagueiro', 1.85, 81.0, 'Direita'),           -- Marquinhos
(14, 'Meia Central', 1.82, 72.0, 'Direita'),       -- Diego Costa
(15, 'Ponta Direita', 1.76, 68.0, 'Direita'),      -- Willian

-- Jogadoras Femininas  
(16, 'Meia Atacante', 1.63, 59.0, 'Direita'),      -- Marta
(17, 'Ponta Esquerda', 1.68, 61.0, 'Direita'),     -- Debinha
(18, 'Meia Atacante', 1.70, 62.0, 'Direita'),      -- Andressa Alves
(19, 'Zagueiro', 1.73, 70.0, 'Direita'),           -- Formiga
(20, 'Centroavante', 1.65, 60.0, 'Direita'),       -- Cristiane
(21, 'Centroavante', 1.70, 60.0, 'Direita'),       -- Bia Zaneratto
(22, 'Meia Central', 1.72, 69.0, 'Direita'),       -- Giovana Queiroz
(23, 'Lateral Esquerdo', 1.76, 63.0, 'Direita'),   -- Tamires
(24, 'Meia Atacante', 1.71, 60.0, 'Direita'),      -- Fabiana
(25, 'Volante', 1.68, 61.0, 'Direita'),            -- Beatriz
(26, 'Meia Atacante', 1.76, 72.0, 'Esquerda'),     -- Lucas Paquetá
(27, 'Centroavante', 1.84, 75.0, 'Direita'),       -- Richarlison
(28, 'Volante', 1.82, 74.0, 'Direita'),            -- Bruno Guimarães  
(29, 'Ponta Direita', 1.72, 69.0, 'Esquerda'),     -- Antony
(30, 'Centroavante', 1.84, 76.0, 'Direita');       -- Matheus Cunha


-- 4; povoar a tabela Treinador
-- Usamos as pessoas 61..90 como treinadores.
INSERT INTO Treinador (id_pessoa, tipoLicenca, numeroLicenca) VALUES
(61,'Nacional',2001),
(62,'Nacional',2002),
(63,'UEFA Pro',2003),
(64,'Nacional',2004),
(65,'Regional',2005),
(66,'UEFA Pro',2006),
(67,'Nacional',2007),
(68,'Regional',2008),
(69,'UEFA Pro',2009),
(70,'Nacional',2010),
(71,'Nacional',2011),
(72,'UEFA Pro',2012),
(73,'Regional',2013),
(74,'Nacional',2014),
(75,'UEFA Pro',2015),
(76,'Nacional',2016),
(77,'Regional',2017),
(78,'Nacional',2018),
(79,'UEFA Pro',2019),
(80,'Nacional',2020),
(81,'Regional',2021),
(82,'Nacional',2022),
(83,'UEFA Pro',2023),
(84,'Nacional',2024),
(85,'Regional',2025),
(86,'Nacional',2026),
(87,'UEFA Pro',2027),
(88,'Regional',2028),
(89,'Nacional',2029),
(90,'UEFA Pro',2030);

INSERT INTO Telefone_Pessoa (id_pessoa, telefone) VALUES
(1, '+55-11-90000-0001'),
(2, '+55-11-90000-0002'), 
(3, '+55-11-90000-0003'),
(4, '+55-11-90000-0004'),
(5, '+351-21-9000-0005'),
(6, '+55-11-90000-0006'),
(7, '+55-11-90000-0007'),
(8, '+351-22-9000-0008'),
(9, '+55-11-90000-0009'),
(10, '+55-11-90000-0010'),
(11, '+55-11-90000-0011'),
(12, '+55-11-90000-0012'),
(13, '+54-11-90000-0013'),
(14, '+55-11-90000-0014'),
(15, '+55-11-90000-0015'),
(16, '+55-11-90000-0016'),
(17, '+55-11-90000-0017'),
(18, '+55-11-90000-0018'),
(19, '+55-11-90000-0019'),
(20, '+55-11-90000-0020'),
(21, '+55-11-90000-0021'),
(22, '+55-11-90000-0022'),
(23, '+55-11-90000-0023'),
(24, '+55-11-90000-0024'),
(25, '+55-11-90000-0025'),
(26, '+55-11-90000-0026'),
(27, '+55-11-90000-0027'),
(28, '+55-11-90000-0028'),
(29, '+55-11-90000-0029'),
(30, '+55-11-90000-0030'),
(31, '+55-11-90000-0031'),
(32, '+55-11-90000-0032'),
(33, '+55-11-90000-0033'),
(34, '+55-11-90000-0034'),
(35, '+55-11-90000-0035'),
(36, '+55-11-90000-0036'),
(37, '+55-11-90000-0037'),
(38, '+55-11-90000-0038'),
(39, '+55-11-90000-0039'),
(40, '+55-11-90000-0040');

INSERT INTO Email_Pessoa (id_pessoa, email) VALUES
(1, 'carlos.silva@email.com'),
(2, 'mariana.fernandes@email.com'),
(3, 'joao.souza@email.com'),
(4, 'ana.costa@email.com'),
(5, 'pedro.oliveira@email.pt'),
(6, 'laura.martins@email.com'),
(7, 'gabriel.bressane@email.com'),
(8, 'sofia.almeida@email.pt'),
(9, 'bruno.rocha@email.com'),
(10, 'patricia.barbosa@email.com'),
(11, 'lucas.moraes@email.com'),
(12, 'camila.ribeiro@email.com'),
(13, 'diego.nunes@email.ar'),
(14, 'marina.santos@email.com'),
(15, 'andre.araujo@email.com'),
(16, 'isabela.cardoso@email.com'),
(17, 'felipe.castro@email.com'),
(18, 'bianca.pinto@email.com'),
(19, 'fernando.correia@email.com'),
(20, 'renata.dias@email.com'),
(21, 'marcelo.moreira@email.com'),
(22, 'viviane.neto@email.com'),
(23, 'gustavo.teixeira@email.com'),
(24, 'paula.mendes@email.com'),
(25, 'thiago.faria@email.com'),
(26, 'leticia.roque@email.com'),
(27, 'eduardo.vasconcelos@email.com'),
(28, 'daniela.amaral@email.com'),
(29, 'simone.macedo@email.com'),
(30, 'kaoru.mitoma@email.jp'),
(31, 'ivan.lima@email.com'),
(32, 'maria.pereira@email.com'),
(33, 'roberto.santos@email.com'),
(34, 'julia.martins@email.com'),
(35, 'carlos.gomes@email.com'),
(36, 'ana.lima@email.com'),
(37, 'paulo.costa@email.com'),
(38, 'beatriz.alves@email.com'),
(39, 'ricardo.sousa@email.com'),
(40, 'fernanda.santos@email.com');

INSERT INTO Time (nome, sigla, cidade, tipo, categoria, genero, faixa_etaria, dataFundacao, id_time_pai) VALUES
--Masculino
('Corinthians','COR','São Paulo','Clube','Profissional','Masculino','Principal','1910-09-01',NULL),
('Palmeiras','PAL','São Paulo','Clube','Profissional','Masculino','Principal','1914-08-26',NULL),
('Grêmio','GRE','Porto Alegre','Clube','Profissional','Masculino','Principal','1903-09-15',NULL),
('Fluminense','FLU','Rio de Janeiro','Clube','Profissional','Masculino','Principal','1902-07-21',NULL),
('Atlético-MG','CAM','Belo Horizonte','Clube','Profissional','Masculino','Principal','1908-03-25',NULL),
('Flamengo','FLA','Rio de Janeiro','Clube','Profissional','Masculino','Principal','1895-11-17',NULL),
('São Paulo FC','SAO','São Paulo','Clube','Profissional','Masculino','Principal','1930-01-25',NULL), 
('Cruzeiro','CRU','Belo Horizonte','Clube','Profissional','Masculino','Principal','1921-01-02',NULL),
('Internacional','INT','Porto Alegre','Clube','Profissional','Masculino','Principal','1909-04-04',NULL),
('Athletico-PR','CAP','Curitiba','Clube','Profissional','Masculino','Principal','1924-03-26',NULL),
('Fortaleza','FOR','Fortaleza','Clube','Profissional','Masculino','Principal','1918-10-18',NULL),
('Amazonas FC','AFC','Manaus','Clube','Profissional','Masculino','Principal','2019-07-23',NULL),
('Sport Recife','SPT','Recife','Clube','Profissional','Masculino','Principal','1905-05-13',NULL),
('Goiás','GOI','Goiânia','Clube','Profissional','Masculino','Principal','1943-04-06',NULL),
('Bahia','BAH','Salvador','Clube','Profissional','Masculino','Principal','1931-01-01',NULL),
('Santos','SAN','Santos','Clube','Profissional','Masculino','Principal','1912-04-14',NULL),
('Vasco','VAS','Rio de Janeiro','Clube','Profissional','Masculino','Principal','1898-08-21',NULL),
('Vitória','VIT','Salvador','Clube','Profissional','Masculino','Principal','1899-05-13',NULL),
('Guarani','GUA','Campinas','Clube','Profissional','Masculino','Principal','1911-04-02',NULL),
('CSA','CSA','Maceió','Clube','Profissional','Masculino','Principal','1913-09-07',NULL),
--Feminino
('Corinthians Fem','COR','São Paulo','Clube','Profissional','Feminino','Principal','1997-04-22',1),
('Santos Fem','SAF','Santos','Clube','Profissional','Feminino','Principal','1997-04-22',16),
('São Paulo Fem','SPF','São Paulo','Clube','Profissional','Feminino','Principal','1997-04-22',7),
('Flamengo Fem','FLF','Rio de Janeiro','Clube','Profissional','Feminino','Principal','1997-04-22',6),
('Internacional Fem','INF','Porto Alegre','Clube','Profissional','Feminino','Principal','1997-04-22',9),
('Palmeiras Fem','PAF','São Paulo','Clube','Profissional','Feminino','Principal','1997-04-22',2),
('Grêmio Fem','GRF','Porto Alegre','Clube','Profissional','Feminino','Principal','1997-04-22',3),
('Cruzeiro Fem','CRF','Belo Horizonte','Clube','Profissional','Feminino','Principal','1997-04-22',8),
('Fluminense Fem','FLU','Rio de Janeiro','Clube','Profissional','Feminino','Principal','1997-04-22',4),
('Atlético-MG Fem','ATF','Belo Horizonte','Clube','Profissional','Feminino','Principal','1997-04-22',5);

-- 6; povoar a tabela Estadio
-- Inserimos 30 estádios distintos.
INSERT INTO Estadio (nome, cidade, capacidade, dono) VALUES
('Neo Química Arena','São Paulo',47000,'SC Corinthians'),
('Allianz Parque','São Paulo',43000,'SE Palmeiras'), 
('Arena do Grêmio','Porto Alegre',55000,'Grêmio FBPA'),
('Maracanã','Rio de Janeiro',78000,'Governo RJ'),
('Arena MRV','Belo Horizonte',46000,'Clube Atlético Mineiro'),
('Mineirão','Belo Horizonte',61000,'Governo MG'),
('Morumbi','São Paulo',66000,'São Paulo FC'),
('Arena Independência','Belo Horizonte',23000,'Cruzeiro EC'),
('Beira-Rio','Porto Alegre',50000,'SC Internacional'),
('Arena da Baixada','Curitiba',42000,'Club Athletico Paranaense'),
('Arena Castelão','Fortaleza',63000,'Governo CE'),
('Arena da Amazônia','Manaus',44000,'Governo AM'),
('Ilha do Retiro','Recife',26000,'Sport Club do Recife'),
('Serrinha','Goiânia',12000,'Goiás EC'),
('Arena Fonte Nova','Salvador',48000,'Governo BA'),
('Vila Belmiro','Santos',16000,'Santos FC'),
('São Januário','Rio de Janeiro',21000,'CR Vasco da Gama'),
('Barradão','Salvador',35000,'EC Vitória'),
('Brinco de Ouro','Campinas',29000,'Guarani FC'),
('Rei Pelé','Maceió',20000,'CSA'),
('Arena Pantanal','Cuiabá',44000,'Governo MT'),
('Arena Pernambuco','São Lourenço da Mata',46000,'Governo PE'),
('Mané Garrincha','Brasília',72000,'Governo DF'),
('Arena das Dunas','Natal',32000,'Governo RN'),
('Couto Pereira','Curitiba',40000,'Coritiba FC'),
('Serra Dourada','Goiânia',50000,'Governo GO'),
('Albertão','Teresina',52000,'Governo PI'),
('Arena Condá','Chapecó',20000,'Chapecoense'),
('Kleber Andrade','Cariacica',21000,'Governo ES'),
('Batistão','Aracaju',35000,'Governo SE');
INSERT INTO Torneio (nome, tipo, ano, pais, genero, faixa_etaria, status) VALUES
('Campeonato Brasileiro Série A','Pontos Corridos',2025,'Brasil','Masculino','Principal','Encerrado'),
('Copa do Brasil','Mata-Mata',2021,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Paulista','Grupos',2022,'Brasil','Masculino','Principal','Encerrado'), 
('Copa São Paulo de Futebol Júnior','Mata-Mata',2023,'Brasil','Masculino','Sub-20','Ativo'),
('Campeonato Brasileiro Série B','Pontos Corridos',2024,'Brasil','Masculino','Principal','Ativo'),
('Copa do Nordeste','Grupos',2023,'Brasil','Masculino','Principal','Ativo'),
('Campeonato Carioca','Grupos',2022,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Mineiro','Mata-Mata',2021,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Gaúcho','Grupos',2024,'Brasil','Masculino','Principal','Ativo'),
('Campeonato Baiano','Mata-Mata',2020,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Pernambucano','Pontos Corridos',2021,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Goiano','Grupos',2022,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Cearense','Grupos',2023,'Brasil','Masculino','Principal','Ativo'),
('Campeonato Paranaense','Mata-Mata',2024,'Brasil','Masculino','Principal','Ativo'),
('Copa Verde','Mata-Mata',2022,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Brasileiro Série C','Pontos Corridos',2021,'Brasil','Masculino','Principal','Encerrado'),
('Campeonato Brasileiro Série D','Grupos',2023,'Brasil','Masculino','Principal','Ativo'),
('Campeonato Acreano','Pontos Corridos',2024,'Brasil','Masculino','Principal','Ativo'),
('Supercopa do Brasil','Mata-Mata',2023,'Brasil','Masculino','Principal','Ativo'),
('Campeonato Brasileiro Sub-20','Grupos',2024,'Brasil','Masculino','Sub-20','Ativo'),
('Copa do Brasil Sub-17','Mata-Mata',2024,'Brasil','Masculino','Sub-17','Ativo'),
('Campeonato Paulista Sub-15','Grupos',2024,'Brasil','Masculino','Sub-15','Ativo'),
('Copa São Paulo Sub-20','Mata-Mata',2024,'Brasil','Masculino','Sub-20','Ativo'),
('Brasileiro Feminino A1','Pontos Corridos',2025,'Brasil','Feminino','Principal','Ativo'),
('Brasileiro Feminino A2','Pontos Corridos',2024,'Brasil','Feminino','Principal','Ativo'),
('Paulista Feminino','Grupos',2024,'Brasil','Feminino','Principal','Ativo'),
('Carioca Feminino','Grupos',2024,'Brasil','Feminino','Principal','Ativo'),
('Mineiro Feminino','Mata-Mata',2024,'Brasil','Feminino','Principal','Ativo'),
('Gaúcho Feminino','Grupos',2024,'Brasil','Feminino','Principal','Ativo');
-- 8; povoar a tabela Arbitragem
-- 30 conjuntos de arbitragem; cada linha referencia 4 árbitros (usamos ids 31..60)
INSERT INTO Arbitragem (id_arbitro_principal, id_arbitro_assistente1, id_arbitro_assistente2, id_quarto_arbitro) VALUES
(31,32,33,34),
(35,36,37,38),
(39,40,41,42),
(43,44,45,46),
(47,48,49,50),
(51,52,53,54),
(55,56,57,58),
(59,60,31,32),
(33,34,35,36),
(37,38,39,40),
(41,42,43,44),
(45,46,47,48),
(49,50,51,52),
(53,54,55,56),
(57,58,59,60),
(31,33,35,37),
(32,34,36,38),
(39,41,43,45),
(40,42,44,46),
(47,49,51,53),
(48,50,52,54),
(55,57,59,31),
(56,58,60,32),
(33,36,39,42),
(34,37,40,43),
(35,38,41,44),
(45,48,51,54),
(46,49,52,55),
(47,50,53,56),
(57,60,32,35);

-- 9; povoar a tabela Partida
-- 30 partidas; cada partida refere torneio (1..30), estadio (1..30), times (1..30), arbitragem (1..30).
INSERT INTO Partida(id_torneio, id_estadio, id_time_casa, id_time_fora, id_arbitragem, dataPartida, fase, rodada, golsCasa, golsFora, status, publico) VALUES
-- Rodada 1 Campeonato Brasileiro Série A Masculino 2025
(1, 1, 1, 2, 1, '2025-03-01 16:00:00', 'Primeiro Turno', 1, 2, 1, 'Encerrada', 47000),
(1, 2, 3, 4, 2, '2025-03-02 17:00:00', 'Primeiro Turno', 1, 0, 0, 'Encerrada', 43000),
(1, 3, 5, 6, 3, '2025-03-03 18:00:00', 'Primeiro Turno', 1, 3, 0, 'Encerrada', 55000),
(1, 4, 7, 8, 4, '2025-03-04 19:00:00', 'Primeiro Turno', 1, 4, 2, 'Encerrada', 78000),
(1, 5, 9, 10, 5, '2025-03-05 15:30:00', 'Primeiro Turno', 1, 0, 1, 'Encerrada', 46000),
(1, 6, 11, 12, 6, '2025-03-06 16:30:00', 'Primeiro Turno', 1, 2, 2, 'Encerrada', 78000),
(1, 7, 13, 14, 7, '2025-03-07 20:00:00', 'Primeiro Turno', 1, 0, 0, 'Encerrada', 66000),
(1, 8, 15, 16, 8, '2025-03-08 18:00:00', 'Primeiro Turno', 1, 1, 0, 'Encerrada', 23000),
(1, 9, 17, 18, 9, '2025-03-09 16:00:00', 'Primeiro Turno', 1, 2, 2, 'Encerrada', 50000),
(1, 10, 19, 20, 10, '2025-03-10 17:30:00', 'Primeiro Turno', 1, 0, 2, 'Encerrada', 42000),

-- Rodada 2 Campeonato Brasileiro Série A1 Feminino 2025
(24, 11, 21, 22, 11, '2025-03-11 19:00:00', 'Primeiro Turno', 1, 0, 0, 'Encerrada', 13000),
(24, 12, 23, 24, 12, '2025-03-12 15:00:00', 'Primeiro Turno', 1, 3, 0, 'Encerrada', 14000),
(24, 13, 25, 26, 13, '2025-03-13 16:45:00', 'Primeiro Turno', 1, 0, 0, 'Encerrada', 16000),
(24, 14, 27, 28, 14, '2025-03-14 18:15:00', 'Primeiro Turno', 1, 4, 0, 'Encerrada', 22000),
(24, 15, 29, 30, 15, '2025-03-15 20:00:00', 'Primeiro Turno', 1, 1, 0, 'Encerrada', 12500),

-- Partidas futuras Rodada 2 Campeonato Brasileiro Série A Masculino 2025 (agendadas)
(1, 16, 2, 3, 16, '2025-04-01 16:00:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 6000),
(1, 17, 4, 5, 17, '2025-04-02 17:00:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 5000),
(1, 18, 6, 7, 18, '2025-04-03 18:30:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 4500),
(1, 19, 8, 9, 19, '2025-04-04 19:45:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 8500),
(1, 20, 10, 11, 20, '2025-04-05 20:00:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 20000),
(1, 21, 12, 13, 21, '2025-04-06 15:30:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 3000),
(1, 22, 14, 15, 22, '2025-04-07 16:40:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 2500),
(1, 23, 16, 17, 23, '2025-04-08 17:50:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 4000),
(1, 24, 18, 19, 24, '2025-04-09 19:10:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 4800),
(1, 25, 20, 1, 25, '2025-04-10 20:20:00', 'Primeiro Turno', 2, 0, 0, 'Agendada', 9900);

-- 10; povoar a tabela Elenco
-- Times 1-20 são masculinos, devem ter jogadores masculinos (1-15)
-- Times 21-30 são femininos, devem ter jogadoras femininas (16-30)
INSERT INTO Elenco (id_time, id_jogador, dataInicio) VALUES
-- Masculino
(1,1,'2022-01-10'),
(2,3,'2022-01-11'), 
(3,4,'2022-01-12'),
(4,5,'2022-01-13'),
(5,6,'2022-01-14'),
(6,7,'2022-01-15'),
(7,8,'2022-01-16'),
(8,9,'2022-01-17'),
(9,10,'2022-01-18'),
(10,11,'2022-01-19'),
(11,12,'2022-01-20'),
(12,13,'2022-01-21'),
(13,14,'2022-01-22'),
(14,15,'2022-01-23'),
(15,2,'2022-01-24'),
(16,26,'2022-01-25'),
(17,27,'2022-01-26'),
(18,28,'2022-01-27'),
(19,29,'2022-01-28'),
(20,30,'2022-01-29'),
-- Feminino 
(21,16,'2022-01-30'),
(22,17,'2022-01-31'),
(23,18,'2022-02-01'),
(24,19,'2022-02-02'),
(25,20,'2022-02-03'),
(26,21,'2022-02-04'),
(27,22,'2022-02-05'),
(28,23,'2022-02-06'),
(29,24,'2022-02-07'),
(30,25,'2022-02-08');
-- 11; povoar a tabela ComissaoTecnica
-- Um membro técnico por time (30 registros) usando pessoas 61..90 (treinadores em sua maioria).
INSERT INTO ComissaoTecnica (id_time, id_pessoa, funcao, dataInicio, dataFim) VALUES
(1,61,'Treinador','2020-02-01',NULL),
(2,62,'Treinador','2020-02-02',NULL),
(3,63,'Treinador','2020-02-03',NULL),
(4,64,'Treinador','2020-02-04',NULL),
(5,65,'Treinador','2020-02-05',NULL),
(6,66,'Treinador','2020-02-06',NULL),
(7,67,'Treinador','2020-02-07',NULL),
(8,68,'Treinador','2020-02-08',NULL),
(9,69,'Treinador','2020-02-09',NULL),
(10,70,'Treinador','2020-02-10',NULL),
(11,71,'Auxiliar Técnico','2020-03-01',NULL),
(12,72,'Auxiliar Técnico','2020-03-02',NULL),
(13,73,'Massagista','2020-03-03',NULL),
(14,74,'Preparador Físico','2020-03-04',NULL),
(15,75,'Auxiliar Técnico','2020-03-05',NULL),
(16,76,'Massagista','2020-03-06',NULL),
(17,77,'Preparador Físico','2020-03-07',NULL),
(18,78,'Auxiliar Técnico','2020-03-08',NULL),
(19,79,'Massagista','2020-03-09',NULL),
(20,80,'Preparador Físico','2020-03-10',NULL),
(21,81,'Auxiliar Técnico','2020-03-11',NULL),
(22,82,'Massagista','2020-03-12',NULL),
(23,83,'Preparador Físico','2020-03-13',NULL),
(24,84,'Auxiliar Técnico','2020-03-14',NULL),
(25,85,'Massagista','2020-03-15',NULL),
(26,86,'Preparador Físico','2020-03-16',NULL),
(27,87,'Auxiliar Técnico','2020-03-17',NULL),
(28,88,'Massagista','2020-03-18',NULL),
(29,89,'Preparador Físico','2020-03-19',NULL),
(30,90,'Auxiliar Técnico','2020-03-20',NULL);

INSERT INTO EventoPartida (id_partida, numero_evento, id_jogador, id_time, tipo_evento, minuto) VALUES
-- Partida 1: 2 x 1 (Time 1 x Time 2)
(1, 1, 1, 1, 'GOL', 15),
(1, 2, 1, 1, 'GOL', 55),
(1, 3, 3, 2, 'GOL', 78),
(1, 4, 3, 2, 'CARTAO_VERMELHO', 90),
(1, 5, 1, 1, 'CARTAO_AMARELO', 35),
-- Partida 2: 0 x 0 (Time 3 x Time 4)
(2, 1, 4, 3, 'CARTAO_AMARELO', 22),
(2, 2, 5, 4, 'CARTAO_AMARELO', 44),
-- Partida 3: 1 x 3 (Time 5 x Time 6)
(3, 1, 6, 5, 'GOL', 10),
(3, 2, 7, 6, 'GOL', 25),
(3, 3, 7, 6, 'GOL', 60),
(3, 4, 7, 6, 'GOL', 75),
(3, 5, 7, 6, 'CARTAO_AMARELO', 15),
(3, 6, 6, 5, 'CARTAO_AMARELO', 40),
-- Partida 4: 4 x 2 (Time 7 x Time 8)
(4, 1, 8, 7, 'GOL', 5),
(4, 2, 8, 7, 'GOL', 18),
(4, 3, 8, 7, 'GOL', 34),
(4, 4, 9, 8, 'GOL', 52),
(4, 5, 9, 8, 'GOL', 67),
(4, 6, 8, 7, 'GOL', 78),
(4, 7, 8, 7, 'CARTAO_AMARELO', 45),
-- Partida 5: 0 x 1 (Time 9 x Time 10)
(5, 1, 11, 10, 'GOL', 88),
(5, 2, 10, 9, 'CARTAO_AMARELO', 65),
-- Partida 6: 2 x 2 (Time 11 x Time 12)
(6, 1, 12, 11, 'GOL', 30),
(6, 2, 13, 12, 'GOL', 42),
(6, 3, 12, 11, 'GOL', 66),
(6, 4, 13, 12, 'GOL', 79),
(6, 5, 12, 11, 'CARTAO_AMARELO', 55),
-- Partida 7: 3 x 0 (Time 13 x Time 14)
(7, 1, 14, 13, 'GOL', 11),
(7, 2, 14, 13, 'GOL', 39),
(7, 3, 14, 13, 'GOL', 77),
(7, 4, 15, 14, 'CARTAO_AMARELO', 50),
-- Partida 8: 1 x 1 (Time 15 x Time 16)
(8, 1, 2, 15, 'GOL', 54),
(8, 2, 26, 16, 'GOL', 71),
(8, 3, 2, 15, 'CARTAO_AMARELO', 30),
-- Partida 9: 2 x 2 (Time 17 x Time 18)
(9, 1, 27, 17, 'GOL', 12),
(9, 2, 28, 18, 'GOL', 29),
(9, 3, 27, 17, 'GOL', 60),
(9, 4, 28, 18, 'GOL', 82),
(9, 5, 27, 17, 'CARTAO_AMARELO', 75),
-- Partida 10: 0 x 2 (Time 19 x Time 20)
(10, 1, 30, 20, 'GOL', 22),
(10, 2, 30, 20, 'GOL', 65),
(10, 3, 29, 19, 'CARTAO_AMARELO', 40),
-- Partida 11: 2 x 1 (Time 21 x Time 22)
(11, 1, 16, 21, 'GOL', 12),
(11, 2, 17, 22, 'GOL', 34),
(11, 3, 16, 21, 'GOL', 78),
(11, 4, 16, 21, 'CARTAO_AMARELO', 81),
-- Partida 12: 1 x 1 (Time 23 x Time 24)
(12, 1, 18, 23, 'GOL', 28),
(12, 2, 19, 24, 'GOL', 67),
(12, 3, 18, 23, 'CARTAO_AMARELO', 52),
-- Partida 13: 3 x 0 (Time 25 x Time 26)
(13, 1, 20, 25, 'GOL', 8),
(13, 2, 20, 25, 'GOL', 49),
(13, 3, 20, 25, 'GOL', 83),
(13, 4, 21, 26, 'CARTAO_AMARELO', 39),
-- Partida 14: 0 x 2 (Time 27 x Time 28)
(14, 1, 23, 28, 'GOL', 24),
(14, 2, 23, 28, 'GOL', 71),
(14, 3, 22, 27, 'CARTAO_AMARELO', 54),
-- Partida 15: 1 x 3 (Time 29 x Time 30)
(15, 1, 25, 30, 'GOL', 9),
(15, 2, 25, 30, 'GOL', 61),
(15, 3, 24, 29, 'GOL', 67),
(15, 4, 25, 30, 'GOL', 85),
(15, 5, 24, 29, 'CARTAO_AMARELO', 33);

-- 13; povoar a tabela Classificacao
INSERT INTO Classificacao (id_torneio, id_time, jogos, vitorias, empates, derrotas, gols_pro, gols_contra, saldo_gols, pontos) VALUES
(1, 1, 1, 1, 0, 0, 2, 1, 1, 3),
(1, 2, 1, 0, 0, 1, 1, 2, -1, 0),
(1, 3, 1, 0, 1, 0, 0, 0, 0, 1),
(1, 4, 1, 0, 1, 0, 0, 0, 0, 1),
(1, 5, 1, 1, 0, 0, 3, 0, 3, 3),
(1, 6, 1, 0, 0, 1, 0, 3, -3, 0),
(1, 7, 1, 1, 0, 0, 4, 2, 2, 3),
(1, 8, 1, 0, 0, 1, 2, 4, -2, 0),
(1, 9, 1, 0, 0, 1, 0, 1, -1, 0),
(1, 10, 1, 1, 0, 0, 1, 0, 1, 3),
(1, 11, 1, 0, 1, 0, 2, 2, 0, 1),
(1, 12, 1, 0, 1, 0, 2, 2, 0, 1),
(1, 13, 1, 0, 1, 0, 0, 0, 0, 1),
(1, 14, 1, 0, 1, 0, 0, 0, 0, 1),
(1, 15, 1, 1, 0, 0, 1, 0, 1, 3),
(1, 16, 1, 0, 0, 1, 0, 1, -1, 0),
(1, 17, 1, 0, 1, 0, 2, 2, 0, 1),
(1, 18, 1, 0, 1, 0, 2, 2, 0, 1),
(1, 19, 1, 0, 0, 1, 0, 2, -2, 0),
(1, 20, 1, 1, 0, 0, 2, 0, 2, 3),
(24, 21, 1, 0, 1, 0, 0, 0,  0, 1),
(24, 22, 1, 0, 1, 0, 0, 0,  0, 1),
(24, 23, 1, 1, 0, 0, 3, 0,  3, 3),
(24, 24, 1, 0, 0, 1, 0, 3, -3, 0),
(24, 25, 1, 0, 1, 0, 0, 0,  0, 1),
(24, 26, 1, 0, 1, 0, 0, 0,  0, 1),
(24, 27, 1, 1, 0, 0, 4, 0,  4, 3),
(24, 28, 1, 0, 0, 1, 0, 4, -4, 0),
(24, 29, 1, 1, 0, 0, 1, 0,  1, 3),
(24, 30, 1, 0, 0, 1, 0, 1, -1, 0);

INSERT INTO Escalacao_time (id_partida, id_jogador, titular, numeroCamisa) VALUES
-- Partida 1: Corinthians x Palmeiras
(1, 1, true, 10),   -- Neymar (Corinthians)
(1, 3, true, 11),   -- Vinicius Jr (Palmeiras)
-- Partida 2: Grêmio x Fluminense
(2, 4, true, 7),    -- Casemiro (Grêmio)
(2, 5, true, 5),    -- Gabriel Jesus (Fluminense)
-- Partida 3: Atlético-MG x Flamengo
(3, 6, true, 9),    -- Rodrygo (Atlético-MG)
(3, 7, true, 11),   -- Arthur (Flamengo)
-- Partida 4: São Paulo x Cruzeiro
(4, 8, true, 8),    -- Raphinha (São Paulo)
(4, 9, true, 10),   -- Alex Sandro (Cruzeiro)
-- Partida 5: Internacional x Athletico-PR
(5, 10, true, 6),   -- Thiago (Internacional)
(5, 11, true, 8),   -- Fred (Athletico-PR)
-- Partida 6: Fortaleza x Amazonas
(6, 12, true, 5),   -- Gabriel Barbosa (Fortaleza)
(6, 13, true, 9),   -- Marquinhos (Amazonas)
-- Partida 7: Sport x Goiás
(7, 14, true, 4),   -- Diego Costa (Sport)
(7, 15, true, 7),   -- Willian (Goiás)
-- Partida 8: Bahia x Santos
(8, 2, true, 10),   -- Coutinho (Bahia)
(8, 26, true, 10),  -- Lucas Paquetá (Santos)
-- Partida 9: Vasco x Vitória
(9, 27, true, 11),  -- Richarlison (Vasco)
(9, 28, true, 7),   -- Bruno Guimarães (Vitória)
-- Partida 10: Guarani x CSA
(10, 29, true, 9),  -- Antony (Guarani)
(10, 30, true, 10), -- Matheus Cunha (CSA)
-- Partida 11: Corinthians Fem x Santos Fem
(11, 16, true, 10), -- Marta (Corinthians Fem)
(11, 17, true, 11), -- Debinha (Santos Fem)
-- Partida 12: São Paulo Fem x Flamengo Fem
(12, 18, true, 7),  -- Andressa (São Paulo Fem)
(12, 19, true, 9),  -- Formiga (Flamengo Fem)
-- Partida 13: Internacional Fem x Palmeiras Fem
(13, 20, true, 10), -- Cristiane (Internacional Fem)
(13, 21, true, 8),  -- Bia Zaneratto (Palmeiras Fem)
-- Partida 14: Grêmio Fem x Cruzeiro Fem
(14, 22, true, 11), -- Giovana (Grêmio Fem)
(14, 23, true, 7),  -- Tamires (Cruzeiro Fem)
-- Partida 15: Fluminense Fem x Atlético-MG Fem
(15, 24, true, 9),  -- Fabiana (Fluminense Fem)
(15, 25, true, 10); -- Beatriz (Atlético-MG Fem)
