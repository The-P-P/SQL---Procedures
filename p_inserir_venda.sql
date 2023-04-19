create procedure `p_inserir_venda` (vData date, max_itens int, max_quantidade int)
begin
    declare vCliente varchar(11);
    declare vProduto varchar(10);
    declare vVendedor varchar(5);
    declare vQUantidade int;
    declare vPreco float;
    declare vItens int;
    declare vNumeroNota int;
    declare vContator int default 1;
    select max(numero) + 1 into vNumeroNota from notas_fiscais;
    set vCliente = f_cliente_aleatorio();
    set vVendedor = f_vendedor_aleatorio();
    insert into notas_fiscais(CPF, MATRICULA, DATA_VENDA,  NUMERO, IMPOSTO);
    values (vCliente, vVendedor, vData, vNumeroNota, 0.18);
    set vItens = f_numero_aleatiorio(1,max_itens);
    WHILE vContator <= vItens
    DO
        set vProduto = f_produto_aleatorio();
        set vQUantidade = f_numero_aleatiorio(10, max_quantidade);
        select PRECO_DE_LISTA into vPreco from tabela_de_produtos where CODIGO_DO_PRODUTO = vProduto;
        insert into itens_notas_fiscais(NUMERO, CODIGO_DO_PRODUTO, QUATIDADE, PRECO) values (vNumeroNota, vProduto, vQUantidade, vPreco);
        set vContator = vContator + 1;
    END WHILE;
return vRetorno;
end
