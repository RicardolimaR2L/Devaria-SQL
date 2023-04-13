/*EXERCICICOS DE GROUP By*/

SELECT 
Cidade,COUNT(*) 'Quantidade de clientes por cidade' /*Qual é a quantidade de clientes por cidade?*/
FROM 
Cliente
Group By 
cidade


SELECT 
Tipo,COUNT(*) 'Quantidade de formas de pagamento por tipo'/* Qual é a quantidade de forma de pagamento por tipo?*/
FROM 
Forma_Pagamento
Group By 
Tipo


SELECT 
MONTH (Data),SUM(Valor) 'Quantidade de vendas em cada mes no ano '/*Qual é o valor de venda da Candies por cada mês do ano?*/
FROM 
Pedido_Venda
Group By 
MONTH(Data)


/*EXERCICICOS DE CASE WHEN */

SELECT
Nome,
CASE WHEN Estado <> 'SP' THEN 'Fora de são paulo' ELSE 'Dentro de são paulo' END /*Trazer os nomes dos clientes classificando se é fora ou dentro do estado de SP.*/
FROM 
Cliente

SELECT
Nome,
CASE WHEN tipo = 'Ticket Refeição' THEN 'Pagamento em  Ticket refeição' ELSE 'outro tipo de pagamento' END/*Trazer as formas de pagamento classificando-as em refeição ou outro tipo de pagamento.*/
FROM 
Forma_Pagamento