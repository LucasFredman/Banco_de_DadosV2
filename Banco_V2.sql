-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER,
    quantidade INTEGER NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de registros em produtos
INSERT INTO produtos (id, nome, preco, descricao) VALUES
(1, 'Café Expresso', 5.50, 'Café forte e encorpado'),
(2, 'Cappuccino', 7.00, 'Com leite vaporizado e espuma cremosa'),
(3, 'Pão de Queijo', 3.00, 'Delicioso e crocante');

-- Inserção de registros em pedidos
INSERT INTO pedidos (id, produto_id, quantidade) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3);
