Select id,name from categories;
SELECT * from categories;
Select * from products;

-- unit_price için casting gerekli
-- Stok adeti 75'den büyük ve categoryId'si 2 olan ürünleri getir.
Select * from products WHERE stock > 75 and categoryid=2;

-- Stok adeti 75'den büyük veya categoryId'si 2 olan ürünleri getir.
Select * from products WHERE stock > 75 or categoryid=2;

-- NOT operatörü
Select * from products WHERE NOT stock > 75;

Select * from products WHERE length(name) > 7;

Select id, length(name) as "Ürün İsim Karakter Uzunluğu" from products

-- Veritabanımdaki ürünlerin adedini göster.
Select COUNT(*) as "Veritabanındaki Ürün Sayısı" from products

-- Toplam stokta kaç adet ürünüm var
Select SUM(stock) as "Toplam Ürün Stok Adeti" from products

-- Stokların ortalamasını almak istiyorum.
Select AVG(stock) from products

-- asc => ascending
-- desc => descending
Select * from products ORDER BY stock

Select * from products ORDER BY name DESC


-- stok adeti 60'dan büyük olan ürünleri stok adeti büyükten küçüğe sırala.
Select * from products 
Where stock > 60
ORDER BY stock DESC



-- LIKE keywordü
-- Ayran == ayran

Select * from products WHERE LOWER(name) LIKE '%a%'

--4. harfi kesinlikle a olan ürünü getir.
Select * from products WHERE LOWER(name) LIKE '___a%'

Select * from products WHERE LOWER(name) LIKE '__c%'

-- MIN,MAX
Select MIN(stock) from products
Select MAX(stock) from products

-- Stok adeti en az olan ürünün nameini görmek istiyorum.
-- İç içe sorgular
Select name from products where stock = (Select MIN(stock) from products)

-- Stok adeti ortalamanın üzerinde olan ürünlerin name alanını ekrana yazdırınız.
SELECT name from products where stock > (SELECT AVG(stock) from products)

-- JOIN
-- INNER JOIN
Select products.name,categories.name from products 
INNER JOIN categories
on products.categoryid = categories.id

--alias
Select p.name,c.name from products p
INNER JOIN categories c
on p.categoryid = c.id


-- 10 adet örnek sorgu yazınız.



