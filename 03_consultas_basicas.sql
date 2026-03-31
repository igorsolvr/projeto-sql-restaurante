USE restaurante;

SELECT nome, categoria FROM produtos WHERE preco > 30;
SELECT nome, telefone, data_nascimento FROM clientes WHERE year(data_nascimento) < 1985;
SELECT id_produto, ingredientes FROM info_produtos WHERE ingredientes LIKE "%carne%"; 
SELECT nome, categoria FROM produtos ORDER BY categoria ASC, nome ASC;
SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 5;
SELECT nome FROM produtos WHERE categoria = 'Prato Principal' ORDER BY nome LIMIT 2 OFFSET 5;

CREATE TABLE backup_pedidos AS SELECT * FROM pedidos;
TRUNCATE backup_pedidos;
SELECT * FROM backup_pedidos;
INSERT INTO backup_pedidos SELECT * FROM pedidos;
SELECT * FROM backup_pedidos;

