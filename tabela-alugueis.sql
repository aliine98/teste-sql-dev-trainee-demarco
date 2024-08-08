USE db_exemplo;

CREATE TABLE alugueis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Mes_Ano VARCHAR(5) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Produto VARCHAR(100) NOT NULL,
    Cor VARCHAR(50) NOT NULL,
    Valor INT NOT NULL
);

INSERT INTO
    alugueis (Mes_Ano, Nome, Produto, Cor, Valor)
VALUES
    ('08-22', 'Paulo', 'Carro', 'Verde', 120),
    ('12-22', 'Jose', 'Bola', 'Amarelo', 58),
    ('10-21', 'João', 'Raquete', 'Prata', 180),
    ('05-19', 'Paulo', 'Bola', 'Verde', 72),
    ('06-22', 'Roberto', 'Carro', 'Amarelo', 150),
    ('07-22', 'Maria', 'Bola', 'Cinza', 45),
    ('08-22', 'Pedro', 'Disco', 'Amarelo', 30),
    ('09-22', 'Ana', 'Caneta', 'Azul', 10);