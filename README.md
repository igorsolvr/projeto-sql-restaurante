# 🍽️ SQL Data Analysis | Restaurante

Este projeto simula um banco de dados de um restaurante com o objetivo de aplicar conceitos de análise de dados utilizando SQL, desde consultas básicas até técnicas mais avançadas.

📌 Objetivo

Desenvolver habilidades em análise de dados utilizando SQL, explorando informações relacionadas a clientes, pedidos, produtos e funcionários, com foco na extração de insights relevantes para o negócio.

🧱 Estrutura do Projeto

O projeto está organizado em etapas que representam um fluxo real de trabalho em dados:

scripts/
│
├── 01_criacao_database.sql
├── 02_insercao_dados.sql
├── 03_consultas_basicas.sql
├── 04_condicionais.sql
├── 05_agregacoes.sql
├── 06_joins.sql
└── 07_consultas_avancadas.sql
🗄️ Modelagem do Banco de Dados

O banco de dados restaurante é composto pelas seguintes tabelas:

clientes → informações dos clientes
funcionarios → dados dos colaboradores
produtos → catálogo de itens
pedidos → registro de vendas
info_produtos → detalhes adicionais dos produtos

A modelagem segue princípios de banco relacional com uso de chaves primárias e estrangeiras.

🔍 Técnicas e Conceitos Aplicados
📊 Consultas SQL
SELECT, WHERE, ORDER BY
LIKE, BETWEEN, IN
LIMIT e OFFSET
🧠 Lógica e Condições
CASE WHEN
IFNULL / NULLIF
Filtros condicionais
📈 Agregações
COUNT, SUM, AVG, MAX, MIN
GROUP BY e HAVING
🔗 Relacionamento de Dados
INNER JOIN
LEFT JOIN
⚡ Recursos Avançados
Views
Funções SQL
Window Functions (ROW_NUMBER)
EXPLAIN (análise de performance)
📊 Exemplos de Análises
📌 Quantidade total de pedidos realizados
📌 Número de clientes únicos
📌 Média de preço dos produtos por categoria
📌 Ranking dos produtos mais caros
📌 Total gasto por cliente
📌 Identificação de pedidos pendentes
📌 Performance de pedidos em relação à média
💡 Possíveis Insights

A partir das análises, é possível responder perguntas como:

Quais clientes mais consomem?
Quais produtos geram mais receita?
Qual é o ticket médio dos pedidos?
Existem pedidos pendentes que impactam a operação?
Quais categorias possuem maior valor agregado?
🚀 Tecnologias Utilizadas
SQL (MySQL)
📂 Como Executar o Projeto
Crie o banco de dados:
CREATE DATABASE restaurante;
USE restaurante;
Execute os scripts na seguinte ordem:
Criação das tabelas
Inserção de dados
Consultas e análises
📈 Próximos Passos
Criar dashboards no Power BI ou Looker Studio
Adicionar mais análises exploratórias
Simular cenários de negócio (ex: sazonalidade, promoções)
Otimizar consultas para grandes volumes de dados
👨‍💻 Autor

Igor Oliveira
Estudante de Análise de Dados

⭐ Observação

Este projeto foi desenvolvido com fins educacionais, simulando um ambiente real de análise de dados para reforçar conceitos fundamentais de SQL aplicados ao contexto de negócio.
