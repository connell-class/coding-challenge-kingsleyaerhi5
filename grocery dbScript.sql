--__________________________________________________________________________
--*************************************************************************
-- FULL STACK GIT GROCERIES__FULL STACK GIT GROCERIEW__FULL STACK GIT GROCERIES
--*************************************************************************

drop table groceryItem cascade;

create table groceryItem(
	itemId integer,
	itemName varchar(50),
	groceryId integer REFERENCES groceryList (groceryId));

drop table groceryList cascade;

create table groceryList (
    groceryId integer primary key,
    itemPrice varchar(50),
	itemQuantity integer
);

insert into groceryItem values(
	1, 'Apples');
insert into groceryList values( 
	1, '$8.25', 5
);

select * from groceryItem;
select * from groceryList;

create table groceryList1 (
    groceryId serial primary key,
    item varchar(50),
    itemPrice varchar(50),
	itemQuantity integer
);

insert into groceryList1 values(
	default, 'Bananas', 
	'$6.55', 5
);

select * from groceryList1;








--*************************************************************************