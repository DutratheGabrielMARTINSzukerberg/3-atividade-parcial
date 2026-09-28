-- Active: 1789693090356@@127.0.0.1@3306@ecommerce

-- Categorias
INSERT INTO categoria (nome, descricao) VALUES ('Roupas & Moda', 'Vestuário urbano, calçados e acessórios');
INSERT INTO categoria (nome, descricao) VALUES ('Informática', 'Hardware, periféricos e acessórios de PC');
INSERT INTO categoria (nome, descricao) VALUES ('Fitness & Treino', 'Equipamentos e acessórios para musculação e calistenia');
INSERT INTO categoria (nome, descricao) VALUES ('Áudio & Som', 'Fones de ouvido, caixas de som e equipamentos áudio');
INSERT INTO categoria (nome, descricao) VALUES ('Livros & Leitura', 'Livros acadêmicos, técnicos e de desenvolvimento pessoal');

-- Produtos
INSERT INTO produto (nome, descricao, estoque, preco, categoria_id) VALUES ('Calça Baggy Streetwear', 'Calça modelagem baggy em sarja encorpada, corte amplo e caimento reto', 35, 189.90, 1);
INSERT INTO produto (nome, descricao, estoque, preco, categoria_id) VALUES ('Teclado Mecânico RGB Switch Red', 'Teclado mecânico compacto 75% com iluminação RGB e conexão USB-C', 80, 299.90, 2);
INSERT INTO produto (nome, descricao, estoque, preco, categoria_id) VALUES ('Par de Argolas Olímpicas', 'Argolas de madeira para treino de calistenia com fitas ajustáveis e travas de segurança', 50, 149.90, 3);
INSERT INTO produto (nome, descricao, estoque, preco, categoria_id) VALUES ('Fone Over-Ear Bluetooth', 'Fone com cancelamento ativo de ruído, áudio HI-FI e bateria de até 30h', 60, 349.90, 4);
INSERT INTO produto (nome, descricao, estoque, preco, categoria_id) VALUES ('Mais Esperto que o Diabo', 'Livro por Napoleon Hill - Capa dura', 40, 42.90, 5);

-- Clientes
INSERT INTO cliente (nome, email, telefone) VALUES ('Lucas Silva', 'lucas.silva@email.com', '(14) 99812-3456');
INSERT INTO cliente (nome, email, telefone) VALUES ('Mariana Costa', 'mariana.costa@email.com', '(14) 99765-4321');
INSERT INTO cliente (nome, email, telefone) VALUES ('Carlos Eduardo', 'carlos.eduardo@email.com', '(17) 99123-8765');
INSERT INTO cliente (nome, email, telefone) VALUES ('Beatriz Souza', 'beatriz.souza@email.com', '(11) 99345-6789');
INSERT INTO cliente (nome, email, telefone) VALUES ('Rafael Mendes', 'rafael.mendes@email.com', '(13) 99210-9876');

-- Pedidos
INSERT INTO pedido (data, status, valor_Total, cliente_id) VALUES ('2026-04-17', 'Entregue', 189.90, 1);
INSERT INTO pedido (data, status, valor_Total, cliente_id) VALUES ('2026-04-17', 'Processando', 299.90, 2);
INSERT INTO pedido (data, status, valor_total, cliente_id) values ('2016-04-17 18:45:00', 'Processando', 149.90, 3);
INSERT INTO pedido (data, status, valor_total, cliente_id) values ('2026-04-17 16:45:00', 'Entregue', 349.90, 4);
INSERT INTO pedido (data, status, valor_total, cliente_id) values ('2026-04-17 11:20:00', 'Pendente', 42.90, 5);

-- Itens do Pedido
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 189.90, 1, 1);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 299.90, 2, 4);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 149.90, 3, 3);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 349.90, 4, 4);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 42.90, 5, 5);

--Pagamento
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) values (189.90, '2026-04-18 09:00:00', 'Pago', 'Cartão de Crédito', 1);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) values (299.90, '2026-04-18 21:30:00', 'Pago', 'Boleto', 2);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) values (149.90, '2026-04-18 22:15:00', 'Pendente', 'Pix', 3);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) values (349.90, '2026-04-18 12:00:00', 'Pago', 'Cartão de Débito', 4);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) values (42.90, '2026-04-18 23:35:00', 'Pago', 'Cartão de Crédito', 5);