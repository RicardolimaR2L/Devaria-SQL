/*EXERCICÍOS DE INNER JOINS */

SELECT
	C. *
FROM
	Cliente C
	inner join Fidelidade F ON C. Codigo = F. Codigo_Cliente /*inner join da tabela de clientes e fidelidades*/



	SELECT 
	D. CNPJ
	FROM
	Distribuidor D
	inner join Pedido_Compra P on D. Codigo = P.Codigo_Distribuidor /*Inner Join da tabela distribuidor e pedido de compra*/


SELECT 
	P.Nome,
	sum(I.Quantidade) as 'Quantidade vendida'
	FROM
	Item_Pedido_Venda I
	inner join Produto P on I.Codigo_Produto = P.Codigo /*Qual a quantidade de venda de cada produto vendido com o nome e descrição?*/
	Group By 
	P.Nome 
	

	/*EXERCICÍOS DE LEFT JOINS */

	SELECT 
	C.Nome,
	CASE WHEN F.Pontos IS NULL THEN '0' ELSE F.Pontos END
	FROM 
	Cliente C
	left join Fidelidade F on F.Codigo_Cliente = C.Codigo

/*COMPRAÇÕES COM NULL TEM QUE SER " IS NULL OU IS NOT PARA NEGAR"*/


SELECT 
	P.Nome,
	SUM(I.Valor_total) as 'valor vendido'
	FROM 
	Produto P
	inner join Item_Pedido_Venda I on P.Codigo = I.Codigo_Produto
	Group by
	P.Nome




SELECT 
	P.Nome,
	CASE WHEN SUM(I.Valor_total) IS NOT NULL THEN SUM(i.Valor_Total) ELSE 0 END as 'valor vendido'
	FROM 
	Produto P
	left join Item_Pedido_Venda I on P.Codigo = I.Codigo_Produto
	Group by
	P.Nome



	/*EXERCICÍOS DE LEFT OUTER JOINS */

	SELECT
	C.Nome,
	C.Email,
	C.Telefone
FROM
	Cliente C
	LEFT JOIN Fidelidade F ON C.Codigo = F.Codigo_Cliente /*Quais são os nomes dos clientes que não possuem fidelidade?*/
	WHERE 
	Pontos IS NULL 
	

	SELECT
	P.Codigo,
	P. Nome
FROM
 Produto P
 LEFT JOIN Item_Pedido_Venda I ON I.Codigo_Produto = p.Codigo
 WHERE 
 Valor_Total IS NULL