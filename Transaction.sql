
CREATE TABLE transactions (
  recordID uuid NOT NULL DEFAULT gen_random_uuuid(),
  cashierID uuid NOT NULL DEFAULT gen_random_uuid(),
  total_amount float NOT NULL DEFAULT(0),
  transaction_type int NOT NULL DEFAULT(0),
  referenceID uuid NOT NULL,
  createdon timestamp without time zone NOT NULL DEFAULT NOW(),
  CONSTRAINT transaction_key PRIMARY KEY (recordID)
)WITH(
  OIDS = FASLE
);

CREATE INDEX ix_transactions_cashierid
  ON transactions
  USING btree(cashierID);