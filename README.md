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
│   ├── SoccerData_functions.sql # Funções personalizadas
│   ├── SoccerData_inserts.sql   # Dados de exemplo
│   ├── SoccerData_selects.sql   # Consultas úteis
│   ├── SoccerData_sp.sql        # Stored procedures
│   ├── SoccerData_triggers.sql  # Triggers do sistema
│   └── README.md               # Documentação dos scripts
├── docs/                        # Documentação e diagramas
│   ├── SoccerData_DER.png      # Diagrama Entidade-Relacionamento
│   ├── SoccerData_ERelacional.png # Diagrama do modelo relacional
│   ├── SoccerData_ERelacional.pgerd # Arquivo fonte (pgModeler)
│   └── README.md               # Guia da documentação
├── relatorioTecnico/           # Relatório técnico detalhado
│   ├── RelatórioTécnico-GabrielBressane.pdf # Relatório completo
│   └── README.md               # Guia do relatório
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
- Cadastro completo de pessoas
- Gestão de 30 times (masculinos e femininos)
- Controle de 29 torneios brasileiros
- Registro de partidas com eventos detalhados
- Sistema de classificação automática via triggers
- Controle de arbitragem com 4 árbitros por partida
- Escalações e transferências de jogadores

## 📊 Principais Funcionalidades

### Consultas Disponíveis (10 consultas principais)
- Partidas completas com detalhes de times, árbitros e estádios
- Gols marcados por time como mandante
- Jogadores que marcaram gols em partidas (considerando apenas jogadores com contrato ativo)
- Árbitros que mais apitaram no Brasileiro
- Estádios que nunca sediaram partidas
- Artilheiros do Campeonato Brasileiro
- Estádios com maior público médio
- Jogadores com mais tempo de clube
- Classificação atual do Brasileiro Feminino
- Times com mais cartões recebidos

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
