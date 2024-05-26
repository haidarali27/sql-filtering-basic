-- mini exercise grouping & aggregation
select * from products;

-- case 1.1 (manajer ingin mengetahui jumlah keseluruhan stock di gudang)
select sum(quantityinstock) as total_stock from products;

-- case 1.2 (manajer ingin mengetahui jumlah variasi barang < 5)
select productline as jenisminiatur, count(productline) as jmlhvariasiproduk from products 
group by productline, productline having count(productline) < 5;

-- case 1.3 (manajer ingin mengetahui rerata setiap stock)
select productname as nama_produk, quantityinstock as stock_barang, avg(quantityinstock) as avg_stock from products 
group by productname, quantityinstock;