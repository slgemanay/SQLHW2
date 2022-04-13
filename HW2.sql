select distinct city from city
where city like  'L%a' and city not ilike '% %'

select payment_id, payment_date, amount from payment
where amount > 1 and payment_date between '2005-06-17' and '2005-06-19'
order by payment_date 


select payment_id, payment_date, amount from payment
order by payment_date desc
OFFSET 0 ROWS FETCH NEXT 10 ROWS only


select concat(first_name,' ',last_name) as "Фамилия и имя",
email as "Электронная почта",
character_length('email') as "Длина email",
last_update::date  as "Дата"
from customer


select lower(last_name) as "last_name", lower(first_name) as "first_name", active
from customer
where first_name ilike 'KELLY' or first_name ilike 'WILLIE' and active = 1