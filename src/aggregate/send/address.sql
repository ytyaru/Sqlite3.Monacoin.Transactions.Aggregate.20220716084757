select addresses, (sum(value - fee) * POW(0.1, 8)) send from transactions where is_send = 1 group by addresses order by send desc;
