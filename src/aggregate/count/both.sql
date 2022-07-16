select count(*) from (
select address from send_partners
INTERSECT
select address from receive_partners);
-- select address from send_partners INTERSECT select address from receive_partners;
