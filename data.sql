--Frame insert scripts to add data into menu_item table
Insert into Menu values('Sandwhich','99.00','Yes','2017/03/15','Main Course','Yes','Edit');
Insert into Menu values('Burger','129.00','Yes','2017/12/23','Main Course','Yes','Edit');
Insert into Menu values('Pizza','149.00','Yes','2017/08/21','Main Course','Yes','Edit');
Insert into Menu values('French Fries','57.00','No','2017/07/02','Main Course','Yes','Edit');
Insert into Menu values('Chocolate Brownie','32.00','Yes','2022/11/02','Main Course','Yes','Edit');

--Frame SQL query to get all menu items
select * from Menu;

--Frame SQL query to get all menu items which after launch date and is active
select * from Menu 
where Active like '%Yes%' and [Date Of Launch]<=getdate();

--Frame SQL query to get a menu items based on Menu Item Id
select * from Menu
where menu_id=2;

--Frame update SQL menu_items table to update all the columns values based on Menu Item Id
update Menu 
set Name='Strawberry brownies',Price='80',Active='Yes',[Date Of Launch]=GETDATE(),
Category='Starters',[Free Delivery]='NO',[Action]='Edit'
where menu_id=5;

-- insert scripts for adding data into user
Insert into Users values('AA');
Insert into Users values('BB');
Insert into Users values('CC');

select * from Users;

-- insert scripts for adding data into cart
Insert into Cart values('1','5');
Insert into Cart values('1','3');
Insert into Cart values('1','2');
Insert into Cart values('1','1');
Insert into Cart values('2','5');
Insert into Cart values('2','3');

select * from Cart;

-- SQL query to get all menu items in a particular user’s cart
select m.[Name],m.Active,m.Price,m.Category,u.user_names,c.user_ids
from Menu as m inner join Cart as c
on c.menu_id=m.menu_id 
inner join Users as u on 
u.user_ids=c.user_ids
where c.user_ids='1'

-- SQL query to get the total price of all menu items in a particular user’s cart
select sum(m.Price) as Total,u.user_ids,u.user_names
from Menu as m inner join Cart as c
on c.menu_id=m.menu_id
inner join Users as u on
u.user_ids=c.user_ids
where u.user_ids=1
group by u.user_ids,u.user_names; 

--e SQL query to remove a menu items from Cart based on User Id and Menu Item Id
delete cart_id 
where user_ids=3 and menu_id=1;
