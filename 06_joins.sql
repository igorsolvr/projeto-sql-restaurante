/*
Aitividade Módulo 15
*/

USE restaurante;

-- Visualização inicial das tabelas
-- SELECT * FROM produtos LIMIT 10;
-- SELECT * FROM info_produtos LIMIT 10;

SELECT p.id_produto, p.nome, p.descricao, info_produtos.ingredientes
FROM produtos p
JOIN info_produtos
ON p.id_produto = info_produtos.id_produto;

SELECT pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome, c.email
FROM pedidos pe
JOIN clientes c
ON pe.id_cliente = c.id_cliente;

SELECT pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome AS cliente, c.email, funcionarios.nome AS funcionario
FROM pedidos pe
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN funcionarios ON pe.id_funcionario = funcionarios.id_funcionario;

SELECT pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome AS cliente, c.email, funcionarios.nome AS funcionario, p.nome AS produto, p.preco
FROM pedidos pe
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN funcionarios ON pe.id_funcionario = funcionarios.id_funcionario
JOIN produtos p ON pe.id_produto = p.id_produto;

SELECT pe.id_pedido, c.nome, pe.status_pedido
FROM clientes c
JOIN pedidos pe ON c.id_cliente = pe.id_cliente
WHERE pe.status_pedido = 'Pendente'
ORDER BY pe.id_pedido DESC;

SELECT clientes.nome
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
WHERE pedidos.id_pedido IS NULL;

SELECT c.nome, COUNT(pe.id_pedido) AS quantidade_pedidos
FROM clientes c
JOIN pedidos pe ON c.id_cliente = pe.id_cliente
GROUP BY c.nome;

SELECT c.nome, SUM(pe.quantidade * p.preco) AS preco_total_pedidos
FROM clientes c
JOIN pedidos pe ON c.id_cliente = pe.id_cliente
JOIN produtos p ON pe.id_produto = p.id_produto
GROUP BY c.nome;

