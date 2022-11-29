-- Bugünün tarihini almak
Select CURRENT_DATE as "Bugünün Tarihi";
--

--
Select * from orders;
--

-- date_part , extract
Select date_part('month',CURRENT_DATE) as "İçinde bulunduğumuz ay"
Select date_part('year',CURRENT_DATE) as "İçinde bulunduğumuz yıl"
Select date_part('century',CURRENT_DATE) as "İçinde bulunduğumuz yüzyıl"
Select date_part('day',CURRENT_DATE) as "İçinde bulunduğumuz gün"

Select id,date_part('day',orderdate) from orders


-- Ayın 15. günü verilen tüm siparişleri listele
Select * from orders
Where date_part('day',orderdate) = 15
--

-- Yaşı 21'den büyük müşterileri listele.
Select * from users

select * from users where (date_part('year',current_date) - (date_part('year',birth_date))) > 21

select * from users where date_part('year', birth_date)<=2001
--

-- son 10 gün içerisindeki siparişler
select * from orders where 
(date_part('year',current_date) = date_part('year',orderdate))
and (date_part('month',current_date) = date_part('month',orderdate))
and (date_part('day',current_date) - (date_part('day',orderdate))) <= 10

select * from orders where date_part('day', orderdate)>=19
--

-- extract
Select extract(month from current_date) as "İçinde bulunduğmuz ay"

Select extract(year from orderdate),count(*) from orders
group by extract(year from orderdate)

--


-- datediff => postgresql mevcut değil
-- timestamp
-- type conversion
-- son 15 gün içerisindeki siparişler
Select * from orders
where (DATE_PART('days',current_date::timestamp-orderdate::timestamp)) <= 10
--

-- Haftalık farkı almak..
Select TRUNC(DATE_PART('days',current_date::timestamp-orderdate::timestamp) / 7) from orders

-- İki tarih arasındaki saat farkını almak.
Select DATE_PART('hour','2022-11-28 21:00'::timestamp) as "Tarih"
Select DATE_PART('hour','2022-11-29 16:00'::timestamp) as "Tarih"

-- İlgili query'i saat farkını doğru bir şekilde verecek hale getiriniz.
Select DATE_PART('hour','2022-11-29 22:00'::timestamp - '2022-11-28 21:00'::timestamp)  as "Tarih"


Select Date_Part('day','2022-11-29 22:00'::timestamp - '2022-11-28 21:00'::timestamp) * 24 
+Date_Part('hour','2022-11-29 22:00'::timestamp - '2022-11-28 21:00'::timestamp) as "Saat Farkı"

Select DATE_PART('hour','2022-11-29 22:00'::timestamp - '2022-11-27 21:00'::timestamp+interval '24 hour') 
as "Tarih"


-- Veritabanınzda eksik ise date ve timestamp alanları ekleyip
-- Bu alanların kullandığımız örneklere benzer 10 adet query ile örneklendirilmesi
