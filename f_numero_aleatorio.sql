create function `f_numero_aleatiorio` (min int, max int)
returns integer
begin
    declare vRetorno int;
    select floor((rand() * (max-min+1)) + min) into vRetorno;
return vRetorno;
end

