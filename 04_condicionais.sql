USE restaurante;

SELECT * FROM pedidos
WHERE id_funcionario = 4 AND status_pedido = 'Pendente';

SELECT * FROM pedidos 
WHERE NOT status_pedido = 'Concluído';

SELECT * FROM pedidos WHERE id_produto IN (1, 3, 5, 7, 8);

SELECT * FROM clientes WHERE nome LIKE 'c%';

SELECT * FROM info_produtos WHERE ingredientes LIKE '%frango%' OR  ingredientes LIKE '%carne%';

SELECT * FROM produtos WHERE preco BETWEEN 20 AND 30;

SELECT id_pedido, NULLIF (id_pedido, 6) AS id_pedido FROM pedidos;

SELECT * FROM pedidos WHERE status_pedido IS NULL;

SELECT id_pedido, status_pedido, IFNULL(status_pedido, 'Cancelado') as status_pedido FROM pedidos;

SELECT 
	nome,
    cargo,
    salario,
    CASE 
		WHEN salario > 3000 THEN 'Acima da média'
        ELSE 'Abaixo da média'
	END AS media_salario
FROM funcionarios;


