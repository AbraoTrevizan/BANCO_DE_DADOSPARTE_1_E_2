-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    perecivel BOOLEAN NOT NULL,
    marca VARCHAR(100),
    nacionalidade VARCHAR(50)
);

-- Inserção de produtos
INSERT INTO Produtos (id_produto, nome, preco, estoque, perecivel, marca, nacionalidade) VALUES
(1, 'Maçã', 2.50, 100, TRUE, 'Marca A', 'Brasil'),
(2, 'Arroz', 20.00, 50, FALSE, 'Marca B', 'Brasil'),
(3, 'Leite', 3.80, 200, TRUE, 'Marca C', 'Brasil'),
(4, 'Feijão', 5.00, 80, FALSE, 'Marca D', 'Brasil'),
(5, 'Iogurte', 4.50, 150, TRUE, 'Marca E', 'Brasil');

-- Verificação dos dados inseridos
SELECT * FROM Produtos;
