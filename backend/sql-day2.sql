Insert Into products(name,unit_price,stock,categoryid)
VALUES ('Deneme',100,100,4)

Select * from products

Update products
Set stock = 10, unit_price = 10
where id=7

DELETE From products
where id=7



-- In,Between

Select * from products where name IN('Deneme','Sprite','Coca Cola')

Select * from products where stock > 0 and stock < 90

Select * from products where stock Between 0 and 90
--

-- Group By

Select categoryid,id from products 
Group by categoryid,id


Select categoryid,COUNT(*) from products 
Group by categoryid
HAVING COUNT(*) > 1


-- Kategori ismi ile ilgili kategoride kaç adet ürün bulunduğunu yazdırınız. Sadece 1'den yüksek ürünlere
-- sahip kategoriler listelenmelidir.
Select c.name as "Kategori İsmi",COUNT(*) as "Kategoride Ürün Sayısı" from products p
inner join categories c 
on p.categoryid = c.id
group by c.name
having count(*) > 1
--


