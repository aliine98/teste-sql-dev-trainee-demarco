USE db_exemplo;

SELECT
    *
FROM
    alugueis;

-- Valor Total de produtos alugados por pessoa,que não inclua os produtos Carro e Raquete como resultado
SELECT
    subquery.`Nome`,
    SUM(subquery.`Valor`) AS `Valor Total`
FROM
    (
        SELECT
            `Nome`,
            `Produto`,
            `Valor`
        FROM
            alugueis
        WHERE
            `Produto` != 'Carro'
            AND `Produto` != 'Raquete'
    ) AS subquery
GROUP BY
    `Nome`;

-- Liste as cores distintas dos produtos que foram alugados após o mês de Julho / 22
SELECT
    DISTINCT `Cor`
FROM
    alugueis
WHERE
    STR_TO_DATE(CONCAT('01-', `Mes_Ano`), '%d-%m-%y') > STR_TO_DATE('01-07-22', '%d-%m-%Y');