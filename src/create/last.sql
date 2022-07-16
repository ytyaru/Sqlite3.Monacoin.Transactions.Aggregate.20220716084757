create table if not exists last (
  id integer primary key,
  count integer,
  last_block_height integer,
  last_txid integer,
  send_value integer,
  receive_value integer,
  balance integer,
  fee integer,
  unconfirmed_balance integer,
  unconfirmed_txs integer,
  send_count integer,
  receive_count integer,
  send_address_count integer,
  receive_address_count integer,
  both_address_count integer,
  firsted integer,
  lasted integer
);

