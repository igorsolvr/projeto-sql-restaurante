# SQL Data Analysis | Restaurante

Este projeto simula um banco de dados de um restaurante com o objetivo de aplicar conceitos de análise de dados utilizando SQL, desde consultas básicas até técnicas mais avançadas. Com o objetivo de desenvolver habilidades em análise de dados utilizando SQL, explorando informações relacionadas a clientes, pedidos, produtos e funcionários, com foco na extração de insights relevantes para o negócio.

---

## ⚙️ Pré-requisitos

Antes de começar, você precisa ter instalado:

- MySQL Server (ou outro banco compatível com SQL)
- MySQL Workbench 8.0 CE / DBeaver / outro cliente SQL

---

##  Instruções de uso

Este tutorial tem como objetivo orientar a execução e exploração do projeto de análise de dados do restaurante utilizando SQL.

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/sql-data-analysis-restaurant.git
cd sql-data-analysis-restaurant
```
### 2. Crie o banco de dados

Abra o seu cliente SQL e execute:
```bash
CREATE DATABASE restaurante;
USE restaurante;
```
### 3. Execute os scripts na ordem correta, conforme enumeração.

1. **Criação das tabelas - 01_criacao_database.sql**  
Cria toda a estrutura do banco de dados (tabelas, chaves e relacionamentos).

2. **Inserção de dados - 02_insercao_dados.sql**  
Popula o banco com dados simulados de clientes, produtos, pedidos e funcionários.

3. **Consultas básicas - 03_consultas_basicas.sql**  
Consultas simples para exploração inicial dos dados.

4. **Condicionais - 04_condicionais.sql**  
Uso de filtros e lógica condicional (WHERE, CASE, LIKE, etc).

5. **Agregações - 05_agregacoes.sql**  
Análises com funções agregadas como:
```
COUNT
AVG
MAX / MIN
GROUP BY
```

6. **JOINs - 06_joins.sql**  
Relacionamento entre tabelas para análises mais completas.

7. **Consultas avançadas - 07_consultas_avancadas.sql**  
Inclui:
    * Views
    * Funções SQL
    * EXPLAIN (análise de performance)

***Os scripts estão organizados para seguir um fluxo lógico de construção do projeto.***

---

## Sobre o projeto

O projeto está organizado em etapas que representam um fluxo real de trabalho em dados.

### Modelagem do Banco de Dados

O banco de dados restaurante é composto pelas seguintes tabelas:
* clientes → informações dos clientes  
* funcionarios → dados dos colaboradores  
* produtos → catálogo de itens  
* pedidos → registro de vendas  
* info_produtos → detalhes adicionais dos produtos  

A modelagem segue princípios de banco relacional com uso de chaves primárias e estrangeiras.

## Técnicas e Conceitos Aplicados

Durante o desenvolvimento deste projeto, foram utilizados conceitos fundamentais e avançados de SQL aplicados a um cenário real de análise de dados:

- 📊 **Consultas SQL:** exploração e filtragem de dados com SELECT, WHERE, LIKE e ORDER BY  
- 📈 **Agregações:** análise de métricas com COUNT, AVG, SUM e GROUP BY  
- 🔗 **JOINs:** combinação de múltiplas tabelas para análises completas  
- 🧠 **Lógica condicional:** uso de CASE WHEN para classificação de dados  
- ⚡ **Recursos avançados:** criação de views, funções SQL e uso de window functions (ROW_NUMBER)  
- 🚀 **Otimização:** análise de performance com EXPLAIN


## Análises Realizadas

O projeto inclui diferentes análises exploratórias sobre os dados do restaurante, permitindo extrair informações relevantes para o negócio:

- Volume total de pedidos realizados.  
- Quantidade de clientes únicos.
- Média de preço dos produtos por categoria. 
- Ranking dos produtos mais caros.  
- Total gasto por cliente.  
- Identificação de pedidos pendentes.  
- Classificação de pedidos com base na média de valor.  

---

## Insights de Negócio

A partir das análises realizadas, é possível responder questões importantes como:

- Quais clientes possuem maior valor para o negócio?  
- Quais produtos contribuem mais para a receita?  
- Qual é o ticket médio dos pedidos?  
- Existem gargalos operacionais (ex: pedidos pendentes)?  
- Quais categorias possuem maior valor agregado?  


### Observação
***Este projeto foi desenvolvido com fins educacionais, simulando um ambiente real de análise de dados para reforçar conceitos fundamentais de SQL aplicados ao contexto de negócio.***
