
-- (aleatorio() * (max-min+1)) + min
-- min = 15, max = 300
select floor((rand() * (300-15+1)) + 15);

select f_numero_aleatiorio(min,max)

select f_cliente_aleatorio();

call p_inserir_venda(20190517, 3, 100)

SELECT A.NUMERO, COUNT(*) AS NUMERO_ITENS, SUM(B.QUANTIDADE * B.PRECO) AS FATURAMENTO FROM NOTAS_FISCAIS A 
INNER JOIN ITENS_NOTAS_FISCAIS B ON A.NUMERO = B.NUMERO WHERE A.DATA_VENDA = '20190517' 
GROUP BY A.NUMEOR;