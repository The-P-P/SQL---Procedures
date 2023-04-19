
-- (aleatorio() * (max-min+1)) + min
-- min = 15, max = 300
select floor((rand() * (300-15+1)) + 15);

select f_numero_aleatiorio(min,max)
