Select * from products
-- JOIN

-- Inner Join
-- Alias => Takma Ad
Select p.name as "Ürün Adı", c.name as "Kategori Adı" from products p
Inner join categories c
on p.categoryid = c.id

Select * from products p
Inner join categories c
on p.categoryid = c.id
--



--
