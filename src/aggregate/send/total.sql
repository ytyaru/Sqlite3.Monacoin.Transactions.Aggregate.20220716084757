-- 送金時feeはvalueに加算済み
select ((sum(value)) * POW(0.1, 8)) from transactions where is_send = 1;
