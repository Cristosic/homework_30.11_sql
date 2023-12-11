-- Вывести название и стоимость в USD одного самого дорогого проданного товара

select ProductName,
	   Price as USD
from Products
order by Price desc
LIMIT 1;

-- Вывести два самых дорогих товара из категории Beverages из USA

select *
from products
JOIN categories on products.CategoryID = categories.CategoryID
where CategoryName = 'Beverages'
order by Price desc
LIMIT 2;

-- Вывести список стран, которые поставляют морепродукты

select distinct Country
from products
JOIN suppliers on products.SupplierID = suppliers.SupplierID
JOIN categories on products.CategoryID = categories.CategoryID
where CategoryName = 'Seafood';

