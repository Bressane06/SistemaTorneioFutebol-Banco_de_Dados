-- 1) Ver todas as partidas com detalhes completos, incluindo nomes dos times, placares,
-- data, fase, status, estádio, árbitros, rodada e nome do torneio.
SELECT 
    p.id_partida,
    t.nome AS torneio,
    p.rodada,
    tc.nome AS time_casa,
    tf.nome AS time_fora,
    p.golsCasa,
    p.golsFora,
    p.dataPartida,
    p.fase,
    p.status,
    e.nome AS estadio,
    CONCAT(ap1.primeiroNome, ' ', ap1.nomeMeio, ' ', ap1.ultimoNome) AS arbitro_principal,
    CONCAT(ap2.primeiroNome, ' ', ap2.nomeMeio, ' ', ap2.ultimoNome) AS arbitro_assistente1,
    CONCAT(ap3.primeiroNome, ' ', ap3.nomeMeio, ' ', ap3.ultimoNome) AS arbitro_assistente2,
    CONCAT(ap4.primeiroNome, ' ', ap4.nomeMeio, ' ', ap4.ultimoNome) AS quarto_arbitro
FROM Partida p
    JOIN Torneio AS t ON p.id_torneio = t.id_torneio
    JOIN Time AS tc ON p.id_time_casa = tc.id_time
    JOIN Time AS tf ON p.id_time_fora = tf.id_time
    JOIN Estadio AS e ON p.id_estadio = e.idEstadio
    JOIN Arbitragem AS a ON p.id_arbitragem = a.id_arbitragem
    JOIN Arbitro AS ar1 ON a.id_arbitro_principal = ar1.id_pessoa
    JOIN Arbitro AS ar2 ON a.id_arbitro_assistente1 = ar2.id_pessoa
    JOIN Arbitro AS ar3 ON a.id_arbitro_assistente2 = ar3.id_pessoa
    JOIN Arbitro AS ar4 ON a.id_quarto_arbitro = ar4.id_pessoa
    JOIN Pessoa AS ap1 ON ar1.id_pessoa = ap1.id_pessoa
    JOIN Pessoa AS ap2 ON ar2.id_pessoa = ap2.id_pessoa
    JOIN Pessoa AS ap3 ON ar3.id_pessoa = ap3.id_pessoa
    JOIN Pessoa AS ap4 ON ar4.id_pessoa = ap4.id_pessoa
ORDER BY p.dataPartida;

-- 2) Mostrar quantos gols cada time marcou como mandante no Brasileiro Feminino A1.
SELECT 
    t.nome AS time,
    SUM(p.golsCasa) AS gols_marcados
FROM Partida AS p
	JOIN Time AS t ON p.id_time_casa = t.id_time
WHERE p.id_torneio = 
    (SELECT 
        id_torneio 
    FROM Torneio 
    WHERE nome = 'Brasileiro Feminino A1')
GROUP BY t.nome
ORDER BY gols_marcados DESC;

-- 3) Mostrar os jogos que já aconteceram dos 4 grandes de São Paulo
SELECT 
    tor.nome AS campeonato,
    p.rodada,
    tc.nome AS time_casa,
    p.golsCasa,
    p.golsFora,
    tf.nome AS time_fora
FROM Partida p
    JOIN Time AS tc ON p.id_time_casa = tc.id_time
    JOIN Time AS tf ON p.id_time_fora = tf.id_time
    JOIN Torneio AS tor ON p.id_torneio = tor.id_torneio
WHERE (tc.nome IN ('Corinthians', 'Santos', 'Palmeiras', 'São Paulo FC')
   OR tf.nome IN ('Corinthians', 'Santos', 'Palmeiras', 'São Paulo FC'))
    AND p.status = 'Encerrada'
ORDER BY p.rodada;

-- 4) Árbitros que mais apitaram partidas no Campeonato Brasileiro Série A Masculino 2025
SELECT
    CONCAT(p.primeiroNome, ' ', COALESCE(p.nomeMeio || ' ', ''), p.ultimoNome) AS nome_arbitro,
    COUNT(*) AS total_partidas
FROM Partida AS pa
    JOIN Arbitragem AS a ON pa.id_arbitragem = a.id_arbitragem
    JOIN Arbitro AS ar ON a.id_arbitro_principal = ar.id_pessoa
    JOIN Pessoa AS p ON ar.id_pessoa = p.id_pessoa
WHERE pa.id_torneio = (
    SELECT id_torneio
    FROM Torneio
    WHERE nome = 'Campeonato Brasileiro Série A'
      AND genero = 'Masculino'
      AND ano = 2025
)
GROUP BY nome_arbitro
ORDER BY total_partidas DESC;

-- 5) Estádios que nunca sediaram uma partida
SELECT 
    e.nome AS estadio,
    e.idEstadio
FROM Estadio AS e
    LEFT JOIN Partida AS p ON p.id_estadio = e.idEstadio
WHERE p.id_estadio IS NULL;

-- 6) Jogadores artilheiros no Campeonato Brasileiro Série A Masculino 2025
SELECT 
    CONCAT(p.primeiroNome, ' ', COALESCE(p.nomeMeio, ''), ' ', p.ultimoNome) AS nome_jogador,
    COUNT(*) AS total_gols
FROM EventoPartida AS e
    JOIN Partida AS pa ON e.id_partida = pa.id_partida
    JOIN Jogador AS j ON e.id_jogador = j.id_pessoa  
    JOIN Pessoa AS p ON j.id_pessoa = p.id_pessoa
WHERE 
    pa.id_torneio = (
        SELECT id_torneio
        FROM Torneio
        WHERE nome = 'Campeonato Brasileiro Série A'
          AND genero = 'Masculino'
          AND ano = 2025
    )
    AND e.tipo_evento = 'GOL'  
GROUP BY p.primeiroNome, p.nomeMeio, p.ultimoNome
ORDER BY total_gols DESC;

-- 7) Estádios com maior público médio
SELECT 
    e.nome AS estadio,
    COALESCE(AVG(p.publico), 0) AS publico_medio --Tratar Null
FROM Estadio AS e
    LEFT JOIN Partida AS p ON p.id_estadio = e.idEstadio
GROUP BY e.nome
ORDER BY publico_medio DESC

-- 8) Jogadores com mais tempo de clube (contrato ainda ativo)
SELECT 
    CONCAT(p.primeiroNome, ' ', COALESCE(p.nomeMeio || ' ', ''), p.ultimoNome) AS nome_jogador,
    t.nome AS nome_time,
    e.dataInicio,
    (CURRENT_DATE - e.dataInicio) AS dias_no_clube
FROM Elenco AS e
    JOIN Jogador AS j ON e.id_jogador = j.id_pessoa
    JOIN Pessoa AS p ON j.id_pessoa = p.id_pessoa
    JOIN Time AS t ON e.id_time = t.id_time
WHERE e.dataFim IS NULL
ORDER BY dias_no_clube DESC;

-- 9) Classificação atual do Brasileiro Feminino A1 2025
SELECT 
    t.nome AS time,
    c.jogos,
    c.vitorias,
    c.empates,
    c.derrotas,
    c.gols_pro,
    c.gols_contra,
    c.saldo_gols,
    c.pontos
FROM Classificacao AS c
    JOIN Time AS t ON c.id_time = t.id_time
WHERE c.id_torneio = (
    SELECT id_torneio
    FROM Torneio
    WHERE nome = 'Brasileiro Feminino A1'
      AND ano = 2025
)
ORDER BY c.pontos DESC, c.saldo_gols DESC, c.gols_pro DESC;

-- 10) Times com menos cartões recebidos no Brasileiro Feminino A1 2025
SELECT 
    t.nome AS time,
    COUNT(*) AS total_cartoes
FROM EventoPartida AS e
	JOIN Jogador AS j ON e.id_jogador = j.id_pessoa
	JOIN Partida AS p ON e.id_partida = p.id_partida
	JOIN Elenco AS el ON el.id_jogador = j.id_pessoa
   				AND p.dataPartida BETWEEN el.dataInicio 
                         AND COALESCE(el.dataFim, p.dataPartida)
	JOIN Time AS t ON t.id_time = el.id_time
WHERE e.tipo_evento IN ('CARTAO_AMARELO', 'CARTAO_VERMELHO')
  AND p.id_torneio = (
        SELECT id_torneio 
        FROM Torneio
        WHERE nome = 'Brasileiro Feminino A1' 
          AND ano = 2025
  )
GROUP BY t.nome
ORDER BY total_cartoes;
