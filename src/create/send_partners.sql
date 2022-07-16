create table if not exists send_partners(
  address text primary key,
  value integer,
  count integer,
  firsted integer,
  lasted integer
) without rowid;

