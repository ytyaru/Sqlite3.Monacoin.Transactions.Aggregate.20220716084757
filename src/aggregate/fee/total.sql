select (sum(fee) * POW(0.1, 8)) from transactions where is_send = 1;

