# Sistema de Gestão de Torneio de Futebol - Banco de Dados

## 📋 Descrição
Sistema de banco de dados para gerenciamento completo de torneios de futebol, incluindo times, jogadores, árbitros, partidas e classificações.

## 🏗️ Estrutura do Banco de Dados

### Entidades Principais
- **Pessoa**: Entidade base para jogadores, árbitros e treinadores
- **Time**: Informações dos times participantes
- **Torneio**: Dados dos campeonatos
- **Partida**: Registro das partidas realizadas
- **Estádio**: Locais onde ocorrem as partidas
- **Classificação**: Tabela de pontuação dos times

### Especializações
- **Jogador**: Herda de Pessoa, com posição, altura, peso
- **Árbitro**: Herda de Pessoa, com federação e licença
- **Treinador**: Herda de Pessoa, com licença específica

## 📁 Estrutura do Projeto
```
├── scripts/
│   ├── SoccerData_create.sql    # Criação das tabelas
│   ├── SoccerData_inserts.sql   # Dados de exemplo
│   ├── SoccerData_selects.sql   # Consultas úteis
│   ├── SoccerData_functions.sql # Funções personalizadas
│   ├── SoccerData_sp.sql        # Stored procedures
│   └── SoccerData_triggers.sql  # Triggers do sistema
├── docs/                        # Documentação adicional
├── relatorioTecnico/           # Relatório técnico do projeto
└── README.md                   # Este arquivo
```

## 🚀 Como Usar

1. Execute o script de criação das tabelas:
   ```sql
   -- Execute SoccerData_create.sql
   ```

2. Popule o banco com dados de exemplo:
   ```sql
   -- Execute SoccerData_inserts.sql
   ```

3. Utilize as consultas pré-definidas:
   ```sql
   -- Execute SoccerData_selects.sql
   ```

## 🎯 Funcionalidades
- Cadastro de pessoas (jogadores, árbitros, treinadores)
- Gestão de times e elencos
- Controle de torneios e fases
- Registro de partidas e eventos
- Sistema de classificação automática
- Controle de arbitragem

## 📊 Principais Consultas
- Classificação de times por torneio
- Estatísticas de jogadores
- Histórico de partidas
- Eventos por partida
- Desempenho de árbitros

## 🛠️ Tecnologias
- SQL (compatível com PostgreSQL/MySQL)
- Triggers para atualizações automáticas
- Stored procedures para operações complexas
- Functions para cálculos específicos

## 📝 Licença
Ver arquivo [LICENSE](LICENSE) para detalhes.

---
*Projeto desenvolvido para a disciplina de Laboratório de Banco de Dados*
