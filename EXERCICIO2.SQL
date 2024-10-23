-- 1. Contar quantos produtos estão cadastrados
SELECT COUNT(*) AS total_produtos FROM Produtos;

-- 2. Calcular o preço médio dos produtos
SELECT AVG(preco) AS preco_medio FROM Produtos;

-- 3. Calcular a média dos preços para perecíveis e não perecíveis
SELECT 
    perecivel,
    AVG(preco) AS preco_medio
FROM 
    Produtos
GROUP BY 
    perecivel;

-- 4. Calcular a média dos preços para cada produto
SELECT 
    nome,
    AVG(preco) AS preco_medio
FROM 
    Produtos
GROUP BY 
    nome;

-- 5. Calcular a média dos preços e o total em estoque
SELECT 
    AVG(preco) AS preco_medio,
    SUM(estoque) AS total_estoque
FROM 
    Produtos;

-- 6. Obter o nome, marca e estoque do produto mais caro
SELECT 
    nome,
    marca,
    estoque
FROM 
    Produtos
ORDER BY 
    preco DESC
LIMIT 1;

-- 7. Selecionar produtos com preço acima da média
SELECT 
    *
FROM 
    Produtos
WHERE 
    preco > (SELECT AVG(preco) FROM Produtos);

-- 8. Contar quantos produtos existem de cada nacionalidade
SELECT 
    nacionalidade,
    COUNT(*) AS quantidade_produtos
FROM 
    Produtos
GROUP BY 
    nacionalidade;
