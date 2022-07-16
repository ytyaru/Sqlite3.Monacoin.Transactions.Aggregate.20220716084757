create table if not exists transactions(
  txid text primary key,
  is_send integer,
  addresses text,
  value integer,
  fee integer,
  confirmations integer,
  block_time integer,
  block_height integer
) without rowid;

