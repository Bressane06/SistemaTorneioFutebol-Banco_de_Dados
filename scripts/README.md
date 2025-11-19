# Scripts SQL

Esta pasta contém todos os scripts SQL necessários para implementar o sistema de gestão de torneio de futebol.

## 📁 Arquivos

### `SoccerData_create.sql`
Script de criação das tabelas do banco de dados.
- Define estrutura completa do banco
- Inclui constraints, chaves primárias e estrangeiras
- Implementa herança para Pessoa (Jogador, Árbitro, Treinador)

### `SoccerData_inserts.sql`
Script com dados de exemplo para popular o banco.
- Dados de teste para todas as tabelas
- Cenários realistas de torneios brasileiros
- Times, jogadores e partidas de exemplo

### `SoccerData_selects.sql`
Consultas úteis e relatórios do sistema.
- 10 consultas principais do sistema
- Classificações, estatísticas e relatórios
- Exemplos de uso das tabelas

### `SoccerData_functions.sql`
Funções personalizadas do PostgreSQL.
- `fn_gols_time_torneio()`: Gols de um time em torneio
- `fn_partidas_vencidas_time_torneio()`: Vitórias por torneio
- `fn_top_goleadores_clube()`: Top 10 artilheiros do clube

### `SoccerData_sp.sql`
Stored procedures para operações complexas.
- `CadastrarJogador()`: Cadastro completo de jogador
- `TransferirJogador()`: Transferência entre times
- `FinalizarPartida()`: Finalização com atualização automática

### `SoccerData_triggers.sql`
Triggers para automação e validação.
- Atualização automática da classificação
- Validação de vínculos de jogadores
- Controle de eventos de partida

## 🚀 Ordem de Execução

1. `SoccerData_create.sql` - Criar estrutura
2. `SoccerData_functions.sql` - Criar funções
3. `SoccerData_sp.sql` - Criar procedures
4. `SoccerData_triggers.sql` - Criar triggers
5. `SoccerData_inserts.sql` - Popular dados
6. `SoccerData_selects.sql` - Testar consultas