-- belajar agregate function di SQL
select * from payments;
select * FROM sales;

-- belajar function agregate AVG
select avg (jumlah_pembayaran) from payments;

-- belajar function agregate AVG with AS
select avg (jumlah_pembayaran) as avg_pembelian from payments;

-- belajar function COUNT
select count(jumlah_pembayaran) as total_data_pembelian from payments;

-- menggunakan distinct di fungsi COUNT
select count (distinct id_customer) as total_pembelian_customer from payments;

-- menggunakan function agregasi lebih dari 1 kolom
select avg (jumlah_pembayaran) as avg_purchase, avg (diskon) as avg_diskon from sales;

-- menggunakan dua function agregasi
select min (jumlah_pembayaran) as min_profit, max (jumlah_pembayaran) as max_profit from sales;



