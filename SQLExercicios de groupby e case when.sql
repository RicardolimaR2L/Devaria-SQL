/*EXERCICICOS DE GROUP By*/

SELECT 
Cidade,COUNT(*) 'Quantidade de clientes por cidade' /*Qual � a quantidade de clientes por cidade?*/
FROM 
Cliente
Group By 
cidade


SELECT 
Tipo,COUNT(*) 'Quantidade de formas de pagamento por tipo'/* Qual � a quantidade de forma de pagamento por tipo?*/
FROM 
Forma_Pagamento
Group By 
Tipo


SELECT 
MONTH (Data),SUM(Valor) 'Quantidade de vendas em cada mes no ano '/*Qual � o valor de venda da Candies por cada m�s do ano?*/
FROM 
Pedido_Venda
Group By 
MONTH(Data)


/*EXERCICICOS DE CASE WHEN */

SELECT
Nome,
CASE WHEN Estado <> 'SP' THEN 'Fora de s�o paulo' ELSE 'Dentro de s�o paulo' END /*Trazer os nomes dos clientes classificando se � fora ou dentro do estado de SP.*/
FROM 
Cliente

SELECT
Nome,
CASE WHEN tipo = 'Ticket Refei��o' THEN 'Pagamento em  Ticket refei��o' ELSE 'outro tipo de pagamento' END/*Trazer as formas de pagamento classificando-as em refei��o ou outro tipo de pagamento.*/
FROM 
Forma_Pagamento