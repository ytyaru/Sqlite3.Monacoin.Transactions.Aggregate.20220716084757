-- 受取時feeはvalueに加算していないと思われる
select ((sum(value)) * POW(0.1, 8)) from transactions where is_send = 0;
