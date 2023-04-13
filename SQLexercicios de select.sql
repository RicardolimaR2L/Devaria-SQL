
/*Exerc�cios de MIN e MAX */

SELECT 
MIN(valor) As 'Menor Compra' /* Qual � a compra que a Candies gastou menos?*/
from 
Pedido_Compra

SELECT 
MAX(valor) as 'Maior Venda'  /*Qual � a venda mais alta da Candies?*/
FROM 
Pedido_Venda


SELECT 
MIN(Data_Adesao) as 'Cliente mais antigo'  /* Qual � o plano de fidelidade mais antigo da Candies?*/
FROM 
Fidelidade 


SELECT 
 MAX(Valor) AS 'Maior venda de fevereiro' /*Qual a maior venda realizada no m�s de fevereiro?*/
FROM
	Pedido_Venda
WHERE
	MONTH(Data) = 2


/*Exerc�cios de Count */

SELECT
COUNT(*) AS 'Quantidade de clientes' /*Quantos clientes a Candies possui?*/ 
FROM Cliente

SELECT
	COUNT(*) AS 'Quantidade de compras acima de 1000'/*Quantas compras com valores maiores de R$ 1.000,00 a Candies teve?*/ 
	FROM Pedido_Compra 
	WHERE 
    Valor > 1000 


SELECT
COUNT(*) AS 'Quantidade de clientes em S�o paulo'  /*Quantos clientes de S�o Paulo a Candies possui?*/
FROM Cliente
	WHERE
	Cidade <> 'S�o paulo'


/*Exerc�cios de SUM (SUMMARY) */

SELECT
SUM(Quantidade) as 'Quantidade Compradas' /*Quantas unidades de doces a Candies comprou?*/
FROM 
Item_Pedido_Compra 

SELECT
SUM (Valor_imposto) as 'Valor Total de impostos' /*Qual o valor total de impostos de vendas da Candies?*/
FROM 
Pedido_Venda


SELECT
SUM (Pontos) as 'Total de Pontos de fidelidade que a candies j� distribuiu' /*Quantos pontos de fidelidade a Candies j� distribuiu?*/ 
FROM 
Fidelidade




/* Exerc�cios de AVG (Average) */

SELECT 
	AVG(Valor) AS 'Ticket m�dio de compras de compra com fornecedores'/*Qual � a m�dia de gasto das compras da Candies?*/
	FROM
	Pedido_Compra


	SELECT 
	AVG(Valor) AS 'Ticket m�dio de compras de clientes '/*Qual � o ticket m�dio dos clientes da Candies?*/
	FROM
	Pedido_Venda

	SELECT 
	AVG(Quantidade) AS 'Quantidade m�dia dos itens de Vendas'/* Qual a quantidade m�dia das vendas da Candies?*/
	FROM
	Item_Pedido_Venda


	/*Operadores aritm�ricos*/

	SELECT 
	Codigo, Data, Valor - Valor_Imposto, valor, Valor_Imposto 'Valor das vendas sem os impostos' /*Qual o valor das vendas sem o valor do imposto?*/
	FROM
   Pedido_Venda

   SELECT 
	Valor_Unitario + Valor_Imposto 'Valor das vendas unitarias com impostos'/*Qual o valor unit�rio de cada produto vendido considerando o valor do imposto?*/
	FROM
   item_Pedido_Venda

    SELECT 
	Valor_Unitario  'Valor das vendas unitarias com impostos'/*Qual o valor unit�rio de cada produto vendido considerando o valor do imposto?*/
	FROM
   item_Pedido_Venda



   SELECT 
	pontos / 2  'N�mero de pontos caso os clientes comprassem metade' /*Quantos pontos de fidelidade seriam se todos os clientes comprassem metade?*/
	FROM
   Fidelidade

   SELECT 
	SUM (pontos / 2)  'N�mero de pontos somados dos clientes que compraram metade' /*Pontos de fidelidade somados de clientes que compraram metade?*/
	FROM
   Fidelidade


   SELECT 
   Valor_total
   from 
   Item_Pedido_Venda
   