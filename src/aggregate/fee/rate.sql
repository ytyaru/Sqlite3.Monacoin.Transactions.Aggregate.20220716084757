select ((sum(fee) * POW(0.1, 8)) / (sum(value) * POW(0.1, 8))) * 100 from transactions where is_send = 1;
