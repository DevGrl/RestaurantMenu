Create database Restaurant

use Restaurant
Create table Restaurant.dbo.Menu
(
MenuItemID int IDENTITY(1,1) PRIMARY KEY,
MenuTimeID int NOT NULL,
MealTypeID int NOT NULL,
Name varchar(35),
Price decimal(10,2),
Description varchar(255),
Active int NOT NULL
)

--Pancakes, Waffles, and More
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,7,'Hash browns and Eggs','Hash browns and two eggs.',6.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,7,'All American Breakfast','Three eggs with hash browns, two strips of bacon, two sausage links.',8.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,7,'Buttermilk Pancakes','Three buttermilk pancakes, hashbrowns, and your choice of sausage, ham, or bacon.',9.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,7,'Belgian Waffles','Two Belgian waffles topped with butter, whipped cream and strawberries.',6.95,1)

--Omlettes
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,6,'Cheese Omlette','American and Swiss Cheese.',6.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,6,'Greek Omlette','Greek feta and tomatoes.',7.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,6,'Spinach Omlette','Fresh spinach, onions, tomatoes, and cheese.',7.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,6,'Ham and Cheese Omlette','Ham, Cheddar and Brocolli.',7.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,6,'Detroit Omlette','Green peppers, ham, onions, tomatoes, mushrooms, spinach, and Swiss Cheese.',8.95,1)

--Beverages
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,4,'Orange Juice','Freshly squeezed orange juice.',3.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,4,'Coffee','Local Stumptown coffee.',3.95,1)
INSERT INTO Menu(MenuTimeID,MealTypeID,Name, Description,Price, Active) values(1,4,'Tea','Assorted black, chamomile, peppermint, green, and hibiscus.',1.95,1)

select * from menu
Create table Restaurant.dbo.MenuTime
(
MenuTimeID int IDENTITY(1,1) PRIMARY KEY,
Description varchar(255)
)

Create table Restaurant.dbo.MealType
(
MealTypeID int IDENTITY(1,1) PRIMARY KEY,
Description varchar(255)
)

use Restaurant
INSERT INTO MenuTime(Description) values('Breakfast')
INSERT INTO MenuTime(Description) values('Lunch')
INSERT INTO MenuTime(Description) values('Dinner')

INSERT INTO MealType(Description) values('Appetizers')
INSERT INTO MealType(Description) values('Sides')
INSERT INTO MealType(Description) values('Entrees')
INSERT INTO MealType(Description) values('Beverages')
INSERT INTO MealType(Description) values('Kids Menu')
INSERT INTO MealType(Description) values('Omelettes')
INSERT INTO MealType(Description) values('Pancakes, Waffles, and More')
INSERT INTO MealType(Description) values('Desserts')


drop table restaurant.dbo.MenuTime
drop table restaurant.dbo.MealType
drop table Menu

SELECT * FROM Restaurant.dbo.menutime
select * from mealtype