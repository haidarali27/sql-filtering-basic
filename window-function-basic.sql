CREATE TABLE customers(
	kota varchar(100),
    tgl timestamp,
    suhu int,
    PRIMARY KEY(kota)
);

INSERT INTO customers(kota, tgl, suhu) VALUES
							 ('sby', '1/1/2001', 25),
                             ('jkt', '2/1/2001', 29),
                             ('sby', '2/1/2001', 30),
                             ('jkt', '3/1/2001', 27),
	('sby', '3/1/2001', 26);

select n.nspname as schema_name,
       t.relname as table_name,
       c.conname as constraint_name
from pg_constraint c
  join pg_class t on c.conrelid = t.oid
  join pg_namespace n on t.relnamespace = n.oid
where t.relname = 'customers';

ALTER TABLE customers DROP CONSTRAINT customers_pkey;

-- belajar windows function
-- ALTER TABLE customers RENAME TO temp_city;
select * from temp_city;
select kota, suhu, avg(suhu) over(partition by kota order by suhu desc range between unbounded preceding and unbounded following) as avgTemp 
from temp_city;
