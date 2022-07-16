select addresses, (sum(value) * POW(0.1, 8)) send from transactions where is_send = 0 group by addresses order by send desc;
