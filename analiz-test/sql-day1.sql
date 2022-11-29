-- Veri seçme, listeleme
-- syntax => yazım kuralları
-- case sensitive değil!
Select name,id from categories;

-- tüm alanları seçmek => *
-- all
Select * from categories;

-- sıralama
-- ürünleri stok adetine göre büyükten küçüğe sırala..
--- ORDER BY
-- Default olarak küçükten büyüğe sıralar => ASCENDING (ASC)
-- Büyükten küçüğe => DESCENDING (DESC)
Select * from products
ORDER BY stock;
--- BU İKİSİ AYNI!!
Select * from products
ORDER BY stock ASC;
----
Select * from products
ORDER BY stock DESC;

-- Order by sadece matematiksel sıralama yapmaz!!
-- Alfabetik sıralama da yapar.
-- ASC => a-z
-- DESC => z-a
Select * from products
ORDER BY name DESC;


-- Filter
-- Stok adeti en az 60 olan verileri göster.
Select * from products 
Where stock > 60;

-- Birden fazla filtre birleştirme
-- AND - OR
-- Stock adeti en az 60 olan ve category_id'si 2 olan verileri getir.
Select * from products 
Where stock > 60 AND category_id=2

-- Stock adeti en az 60 olan veya category_id'si 2 olan verileri getir.
Select * from products 
Where stock > 60 OR category_id=4

-- İsmi Şort veya Tişört olan ürünleri getir.
Select * from products 
Where name = 'Şort' or name = 'Tişört'

-- IN() fonksiyonu
-- İçerisine parametre olarak verilen n kadar veri ile ilgili alanın uyuşmasını bekler. 
Select * from products
where name IN('Şort','Mont','Ayakkabı')

Select * from products
where stock IN(30,40,50,100)

-- Between keywordu
Select * from products 
Where stock <= 70 and stock >= 40

Select * from products 
Where stock Between 40 and 70

-- LIKE keywordu

-- İsminin içinde 't' geçen tüm ürünleri getir
-- pattern => kalıp
-- % => ilgili metnin sol ya da sağına eklendiğinde (sağ için) metinden sonra gelecek metini 
-- önemsemediğimi belirtiyorum
Select * from products
Where name LIKE '%t%'

-- lower => tüm harfleri küçük hale getirir
Select * from products
Where LOWER(name) LIKE 't%'

-- _ => Karakter atlama
-- üçüncü harfi 'r' olan tüm ürünleri
Select * from products 
Where LOWER(name) LIKE '__r%'


-- içinde r ve r'yi takip eden en az 1 karakter olan sorgu!!
Select * from products
Where LOWER(name) LIKE '%_r%'







