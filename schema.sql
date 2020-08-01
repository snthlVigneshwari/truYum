create  database truYum
go
use truYum
go

create table Menu
(
	menu_id int identity(1,1) primary key,
	[Name] varchar(30),
	Price numeric(5,2),
	Active varchar(10),
	[Date Of Launch] date,
	Category varchar(30),
	[Free Delivery] varchar(10),
	[Action] varchar(50)
)
go

Create table Users
(	
	user_ids int identity(1,1) primary key,
	user_names varchar(30),	
)
go

create table Cart
(
	cart_id int identity(1,1) primary key ,
	user_ids int,
	menu_id int,
	constraint fk_menu foreign key (menu_id) references Menu(menu_id),
	constraint fk_users foreign key (user_ids) references Users(user_ids)	
)
go
