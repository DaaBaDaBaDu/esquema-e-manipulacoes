-- Inserções
INSERT INTO clientes (id, nome, email) VALUES
(1, 'João Silva', 'joao@email.com'),
(2, 'Maria Souza', 'maria@email.com');

INSERT INTO produtos (id, nome, preco, estoque) VALUES
(1, 'Livro: Dom Casmurro', 39.90, 10),
(2, 'Livro: 1984', 45.00, 5),
(3, 'O Pequeno Príncipe', 29.50, 8);

INSERT INTO pedidos (id, cliente_id, data_pedido) VALUES
(1, 1, '2025-05-10'),
(2, 2, '2025-05-11');

INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 1);

-- Atualização
UPDATE produtos SET estoque = estoque - 2 WHERE id = 1;

-- Remoção
DELETE FROM clientes WHERE id = 2;

-- Consultas
-- Todos os pedidos com nome do cliente
SELECT pedidos.id, clientes.nome, pedidos.data_pedido
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;

-- Produtos de um pedido específico
SELECT p.nome, ip.quantidade
FROM itens_pedido ip
JOIN produtos p ON ip.produto_id = p.id
WHERE ip.pedido_id = 1;
