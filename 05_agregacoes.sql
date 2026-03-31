USE restaurante;

SELECT COUNT(*) FROM pedidos;

SELECT COUNT(DISTINCT id_cliente) FROM pedidos;

SELECT ROUND(AVG(preco),2) FROM produtos;

SELECT MAX(preco) FROM produtos;

SELECT MIN(preco) FROM produtos;

SELECT DISTINCT nome, preco, ROW_NUMBER() OVER(ORDER BY preco DESC) AS ranking_preco FROM produtos LIMIT 5;

SELECT categoria, ROUND(AVG(preco),2) AS media_preco FROM produtos GROUP BY categoria;

SELECT 
	fornecedor, 
	COUNT(*) AS quantidade_produtos 
FROM
	info_produtos
GROUP BY
	fornecedor
ORDER BY
	quantidade_produtos DESC;

SELECT fornecedor, COUNT(*) AS quantidade_produtos FROM info_produtos GROUP BY fornecedor HAVING COUNT(*) > 1;

SELECT nome, COUNT(*) AS quantidade_pedidos FROM clientes GROUP BY nome HAVING COUNT(*) < 2;


