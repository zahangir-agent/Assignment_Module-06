


/*TASK-1-------------------------------*/
SELECT Customers.Name,customers.email,customers.location,COUNT(Orders.Order_ID)No_of_order
FROM Orders
INNER JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
Group BY Customers.Customer_ID
ORDER by COUNT(Orders.Order_ID) desc

/*TASK-2-------------------------------*/
select 
order_id,
ProductName,
description,
quantity,
quantity*unit_price totalAmount 
from order_items
INNER JOIN products ON order_items.product_id=products.product_id
order by `Order_ID`

/*TASK-3-------------------------------*/
select 
Categories.name Categories_Name,
sum(quantity*unit_price) as Totalrevenue  
from order_items,Categories,products
where
order_items.product_id=products.product_id
and products.category_id=Categories.category_id
 GROUP BY Categories.name
 order by Totalrevenue DESC

/*TASK-4-------------------------------*/
 select
 customers.name ,sum(orders.total_amount) as purchase_amount
 FROM
 customers,orders
 WHERE
customers.Customer_ID=orders.customer_id
group by  customers.name
ORDER BY purchase_amount DESC
limit 5
/*--------OR------------*/

select
 C.name ,sum(OT.Quantity*OT.unit_price) as purchase_amount
 FROM
 customers C,orders O,order_items OT
 WHERE
c.Customer_ID=o.customer_id
and o.order_id=OT.Order_ID
group by  C.name
ORDER BY purchase_amount DESC
limit 5

