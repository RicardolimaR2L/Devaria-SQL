
/*Exercícios de MIN e MAX */

SELECT 
MIN(valor) As 'Menor Compra' /* Qual é a compra que a Candies gastou menos?*/
from 
Pedido_Compra

SELECT 
MAX(valor) as 'Maior Venda'  /*Qual é a venda mais alta da Candies?*/
FROM 
Pedido_Venda


SELECT 
MIN(Data_Adesao) as 'Cliente mais antigo'  /* Qual é o plano de fidelidade mais antigo da Candies?*/
FROM 
Fidelidade 


SELECT 
 MAX(Valor) AS 'Maior venda de fevereiro' /*Qual a maior venda realizada no mês de fevereiro?*/
FROM
	Pedido_Venda
WHERE
	MONTH(Data) = 2


/*Exercícios de Count */

SELECT
COUNT(*) AS 'Quantidade de clientes' /*Quantos clientes a Candies possui?*/ 
FROM Cliente

SELECT
	COUNT(*) AS 'Quantidade de compras acima de 1000'/*Quantas compras com valores maiores de R$ 1.000,00 a Candies teve?*/ 
	FROM Pedido_Compra 
	WHERE 
    Valor > 1000 


SELECT
COUNT(*) AS 'Quantidade de clientes em São paulo'  /*Quantos clientes de São Paulo a Candies possui?*/
FROM Cliente
	WHERE
	Cidade <> 'São paulo'


/*Exercícios de SUM (SUMMARY) */

SELECT
SUM(Quantidade) as 'Quantidade Compradas' /*Quantas unidades de doces a Candies comprou?*/
FROM 
Item_Pedido_Compra 

SELECT
SUM (Valor_imposto) as 'Valor Total de impostos' /*Qual o valor total de impostos de vendas da Candies?*/
FROM 
Pedido_Venda


SELECT
SUM (Pontos) as 'Total de Pontos de fidelidade que a candies já distribuiu' /*Quantos pontos de fidelidade a Candies já distribuiu?*/ 
FROM 
Fidelidade




/* Exercícios de AVG (Average) */

SELECT 
	AVG(Valor) AS 'Ticket médio de compras de compra com fornecedores'/*Qual é a média de gasto das compras da Candies?*/
	FROM
	Pedido_Compra


	SELECT 
	AVG(Valor) AS 'Ticket médio de compras de clientes '/*Qual é o ticket médio dos clientes da Candies?*/
	FROM
	Pedido_Venda

	SELECT 
	AVG(Quantidade) AS 'Quantidade média dos itens de Vendas'/* Qual a quantidade média das vendas da Candies?*/
	FROM
	Item_Pedido_Venda


	/*Operadores aritméricos*/

	SELECT 
	Codigo, Data, Valor - Valor_Imposto, valor, Valor_Imposto 'Valor das vendas sem os impostos' /*Qual o valor das vendas sem o valor do imposto?*/
	FROM
   Pedido_Venda

   SELECT 
	Valor_Unitario + Valor_Imposto 'Valor das vendas unitarias com impostos'/*Qual o valor unitário de cada produto vendido considerando o valor do imposto?*/
	FROM
   item_Pedido_Venda

    SELECT 
	Valor_Unitario  'Valor das vendas unitarias com impostos'/*Qual o valor unitário de cada produto vendido considerando o valor do imposto?*/
	FROM
   item_Pedido_Venda



   SELECT 
	pontos / 2  'Número de pontos caso os clientes comprassem metade' /*Quantos pontos de fidelidade seriam se todos os clientes comprassem metade?*/
	FROM
   Fidelidade

   SELECT 
	SUM (pontos / 2)  'Número de pontos somados dos clientes que compraram metade' /*Pontos de fidelidade somados de clientes que compraram metade?*/
	FROM
   Fidelidade


   SELECT 
   Valor_total
   from 
   Item_Pedido_Venda
   