/*
Atividade Módulo 16
*/

USE restaurante;

-- Criando a view do join das quatro tabelas: pedidos, clientes, funcionarios e produtos
CREATE VIEW resumo_pedido AS
SELECT pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome AS cliente, c.email, f.nome AS funcionario, p.nome AS produto, p.preco
FROM pedidos pe
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN funcionarios f ON pe.id_funcionario = f.id_funcionario
JOIN produtos p ON pe.id_produto = p.id_produto;
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				
-- Consulta do id do pedido, nome do cliente e o total de cada pedido
SELECT id_pedido, cliente, (quantidade * preco) AS total 
FROM resumo_pedido;

-- Atualizando a view e inserindo o campo total 
CREATE OR REPLACE VIEW resumo_pedido AS
SELECT pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome AS cliente, c.email, f.nome AS funcionario, p.nome AS produto, p.preco, (pe.quantidade * p.preco) AS total
FROM pedidos pe
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN funcionarios f ON pe.id_funcionario = f.id_funcionario
JOIN produtos p ON pe.id_produto = p.id_produto;

-- Consulta com o novo campo "total" adicionado
SELECT id_pedido, cliente, total
FROM resumo_pedido;

-- Consulta com o uso do EXPLAIN
EXPLAIN
SELECT id_pedido, cliente, total
FROM resumo_pedido;

-- Criando a função BuscaIngredientesProduto
DELIMITER //
CREATE FUNCTION BuscaIngredientesProduto (idProduto INT)
RETURNS VARCHAR (200)
READS SQL DATA
BEGIN
	DECLARE Ingredientes VARCHAR (200);
    SELECT ip.ingredientes INTO Ingredientes FROM restaurante.info_produtos ip WHERE ip.id_produto = idProduto;
    RETURN Ingredientes;
END//
DELIMITER ;

-- Consulta utilizando a função BuscaIngredientesProduto
SELECT BuscaIngredientesProduto(10);

-- Criando a função mediaPedido
DELIMITER //
CREATE FUNCTION mediaPedido (idPedido INT)
RETURNS VARCHAR (100)
READS SQL DATA
BEGIN 
	DECLARE TotalPedidos DECIMAL (10,2);
	DECLARE MediaPedidos DECIMAL (10,2);
    DECLARE Performance VARCHAR (200);
    
    -- Total do pedido utilizando a view criada anteriormente
    SELECT total INTO TotalPedidos
    FROM resumo_pedido
    WHERE id_pedido = idPedido;
   
   -- Média de todos os pedidos utilizando a view criada anteriormente
   SELECT AVG(total) INTO MediaPedidos
   FROM resumo_pedido;
   
   -- Se caso o pedido for inexistente
   IF TotalPedidos IS NULL THEN 
		RETURN 'Pedido não encontrado';
	END IF;
   
   	SET Performance = 
    CASE	
		WHEN TotalPedidos > MediaPedidos THEN 'Acima da Média'
        WHEN TotalPedidos < MediaPedidos THEN 'Abaixo da Média'
		ELSE 'Igual à Média'
	END;
    
    RETURN Performance;
    END//
    DELIMITER ;
    
-- Consulta do pedido 5 com a função mediaPedido     
SELECT mediaPedido(5);

-- Consulta do pedido 6 com a função mediaPedido  
SELECT mediaPedido(6);
    
