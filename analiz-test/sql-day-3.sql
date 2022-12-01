-- AVG, SUM, COUNT, Max, Min, Distinct

--

-- AVG => Average
-- Aritmetik ortalama hesaplar.
Select AVG(total_cost) as "Ortalama Sipariş Tutarı" from orders
--

-- SUM => Summary
-- Toplam
Select SUM(total_cost) as "Toplam Sipariş Tutarı" from orders
--

-- COUNT => Adet
Select COUNT(id) from orders
--

-- MAX => MAXIMUM
-- Veriler arasındaki maksimum değeri döner.
Select MAX(total_cost) as "En pahalı sipariş" from orders
--

-- MIN => MINIMUM
-- Veriler arasındaki minimum değeri döner.
Select MIN(total_cost) as "En ucuz sipariş" from orders
--
Select customer_id from orders
-- Hangi kullanıcılar sipariş vermiştir
Select DISTINCT(customer_id) from orders
--
Select * from products

-- GROUP BY
Select category_id,COUNT(*) from products
GROUP BY category_id
--
Select stock,category_id,COUNT(*) from products
GROUP BY category_id,stock

-- HAVING
Select stock,category_id,COUNT(*) from products
Where stock>50
GROUP BY category_id,stock
HAVING COUNT(*) > 1
--
Select * from products
-- İçerisinde en az 2 ürün olan kategorilerin ürün sayısını listele.
Select c.name as "Kategori Adı", COUNT(*) as "Kategorideki ürün sayısı" from products p
inner join categories c
on p.category_id = c.id
GROUP BY c.name
HAVING COUNT(*) >= 2


Select unit_price,stock,category_id from products
GROUP BY unit_price,stock,category_id
