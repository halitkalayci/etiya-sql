Select * from countries c 
inner join cities ci
on c.id = ci.country_id
inner join towns t
on ci.id = t.city_id
inner join districts d
on t.id = d.town_id


Select * from countries c 
left join cities ci
on c.id = ci.country_id


Select * from cities ci
right join countries c
on ci.country_id = c.id


Select * from products p 
left join product_categories pc
on p.id = pc.product_id
full outer join categories c
on pc.category_id = c.id


