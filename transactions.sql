SELECT
  `hash` as transaction_hash,
  block_timestamp,
  block_number,
  block_hash,
  from_address,
  to_address,
  value,
  input,
FROM `bigquery-public-data.crypto_ethereum.transactions` 
WHERE 
  DATE(block_timestamp) >= "2022-12-08"
  and (input = '0x' or to_address IN ('0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d', '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48'))