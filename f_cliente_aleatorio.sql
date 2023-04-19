create function `f_cliente_aleatorio` ()
returns varchar(11)
begin
    declare vRetorno varchar(11);
    declare num_max_tabela int;
    declare num_aleatorio int;
    select count(*) into num_max_tabela from tabela_de_clientes;
    set num_aleatorio = f_numero_aleatiorio(1,num_max_tabela);
    set num_aleatorio = num_aleatorio - 1
    select CPF into vRetorno from tabela_de_clientes limit num_aleatorio, 1;
return vRetorno;
end

