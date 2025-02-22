CREATE SCHEMA DESAFIO;
USE DESAFIO;
CREATE TABLE produto (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE vendedor (
    vendedor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    cargo VARCHAR(40) NOT NULL,
    salario FLOAT
);
INSERT INTO produto (nome, categoria, preco) 
VALUES 
('Camiseta', 'Roupas', 49.90),
('Tênis', 'Calçados', 129.90),
('Jaqueta', 'Roupas', 199.90),
('Boné', 'Acessórios', 29.90),
('Mochila', 'Acessórios', 89.90),
('Calça Jeans', 'Roupas', 119.90),
('Relógio', 'Acessórios', 249.90),
('Blusa de frio', 'Roupas', 159.90),
('Chapéu', 'Acessórios', 59.90),
('Pulseira', 'Acessórios', 39.90);

INSERT INTO vendedor (nome, cargo, salario) 
VALUES 
('JoÃO', 'atendente', 2500),
('duda', 'supervisor', 4800),
('Luiz', 'gerente', 6000),
('Guilherme', 'coordenador', 4500),
('Felipe', 'vendedor', 3000),
('Mariana', 'gerente', 8000),
('gabriel', 'vendedor', 3500),
('luiza', 'atendente', 2200),
('Marcos', 'vendedor', 3200),
('thomas', 'supervisor', 5000);

SELECT SUM(preco) AS total_precos FROM produto;
SELECT AVG(preco) AS media_precos FROM produto;
SELECT categoria, COUNT(*) AS total_produtos FROM produto GROUP BY categoria;

SELECT cargo, AVG(salario) AS media_salario FROM vendedor GROUP BY cargo;
SELECT cargo, COUNT(*) AS total_vendedores FROM vendedor GROUP BY cargo;
