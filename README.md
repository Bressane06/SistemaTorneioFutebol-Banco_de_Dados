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
├── scripts/                     # Scripts SQL do sistema
│   ├── SoccerData_create.sql    # Criação das tabelas
│   ├── SoccerData_inserts.sql   # Dados de exemplo
│   ├── SoccerData_selects.sql   # Consultas úteis
│   ├── SoccerData_functions.sql # Funções personalizadas
│   ├── SoccerData_sp.sql        # Stored procedures
│   ├── SoccerData_triggers.sql  # Triggers do sistema
│   └── README.md               # Documentação dos scripts
├── docs/                        # Documentação e diagramas
│   ├── DER.png                 # Diagrama Entidade-Relacionamento
│   ├── DiagramaRelacional.png  # Diagrama do modelo relacional
│   ├── DiagramaRelacional.pgerd # Arquivo fonte (pgModeler)
│   ├── RelatórioTécnico-GabrielBressane.pdf # Relatório completo
│   └── README.md               # Guia da documentação
├── relatorioTecnico/           # Relatório técnico detalhado
│   └── README.md               # Status e planejamento
├── devTest.session.sql         # Sessão de desenvolvimento
├── .gitignore                  # Arquivos ignorados pelo Git
├── LICENSE                     # Licença do projeto
└── README.md                   # Este arquivo
```

## 🚀 Como Usar

### Configuração Inicial
1. **Criar estrutura**: Execute `scripts/SoccerData_create.sql`
2. **Criar funções**: Execute `scripts/SoccerData_functions.sql`
3. **Criar procedures**: Execute `scripts/SoccerData_sp.sql`
4. **Criar triggers**: Execute `scripts/SoccerData_triggers.sql`
5. **Popular dados**: Execute `scripts/SoccerData_inserts.sql`
6. **Testar sistema**: Execute `scripts/SoccerData_selects.sql`

### Documentação Detalhada
- **Scripts SQL**: Ver [scripts/README.md](scripts/README.md)
- **Diagramas**: Ver [docs/README.md](docs/README.md)
- **Relatório Técnico**: Ver [relatorioTecnico/README.md](relatorioTecnico/README.md)

## 🎯 Funcionalidades
- Cadastro de pessoas (jogadores, árbitros, treinadores)
- Gestão de times e elencos
- Controle de torneios e fases
- Registro de partidas e eventos
- Sistema de classificação automática
- Controle de arbitragem

## 📊 Principais Funcionalidades

### Consultas Disponíveis
- Classificação completa de torneios
- Estatísticas detalhadas de jogadores
- Histórico completo de partidas
- Eventos e lances por partida
- Análise de desempenho de árbitros
- Artilheiros por campeonato
- Público médio por estádio
- Cartões por time

### Automações
- Atualização automática da classificação
- Validação de vínculos de jogadores
- Controle de eventos de partida
- Transferências entre times

## 🛠️ Tecnologias
- **PostgreSQL** (versão 15+)
- **SQL** com recursos avançados
- **Triggers** para automação
- **Stored Procedures** para operações complexas
- **Functions** para cálculos específicos
- **pgModeler** para modelagem

## 📝 Licença
Ver arquivo [LICENSE](LICENSE) para detalhes.

---
*Projeto desenvolvido para a disciplina de Laboratório de Banco de Dados*
