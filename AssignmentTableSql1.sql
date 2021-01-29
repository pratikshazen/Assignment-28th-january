use WFA3DotNet 

 --Q.1) Create Table

	create Table Product2(
		ProductId int not null primary key identity(1,1),
		Descriptions varchar(30) not null unique,
		Setqty int not null
		check(Setqty=1 OR Setqty=5 OR Setqty=10)
		default 1,
		Rate decimal(10,2)
		check(Rate >=51 AND Rate <= 5000) 
		)

		
   --Q.2) Insert 20 records in product table.

	Insert into Product2 values('Apple', 1, 1676.99)
	Insert into Product2 values('Dell', 5, 545.55)
	Insert into Product2 values('HP', 1, 454.4)
	Insert into Product2 values('Lenovo', 5, 4544.5)
	Insert into Product2 values('Asus', 1, 767.7)
	Insert into Product2 values('Acer', 10, 3898.88)
	Insert into Product2 values('Samsung', 1, 543.6)
	Insert into Product2 values('Vaio', 5, 2567.68)
	Insert into Product2 values('Toshiba', 1, 433.3)
	Insert into Product2 values('MSI', 5, 988.55)
	Insert into Product2 values('Google', 10, 2221.55)
	Insert into Product2 values('iBall', 5, 4898.7)
	Insert into Product2 values('Huawei', 5, 3875.55)
	Insert into Product2 values('LG', 1, 4434.4)
	Insert into Product2 values('Micromax', 1, 4325.5)
	Insert into Product2 values('Avita', 5, 4555.5)
	Insert into Product2 values('Panasonic', 5, 2566.77)
	Insert into Product2 values('Razer', 1, 4555.55)
	Insert into Product2 values('RDP', 10, 1698.6)
	Insert into Product2 values('Life Digital', 5, 2576.44)

	select * from Product2

  --Q.3)Update all rates with 10% rate hike.

  update Product2 set Rate = Rate *1.1
  from Product2

  --Q.4) Delete last record by providing the ProductID.
  delete from Product2 
  where ProductId = 20

  --Q.5) Alter table and add the following column.
  alter table Product2 add MarginCode char(1)
  check (MarginCode = 'A' OR MarginCode = 'B' OR MarginCode = NULL)

  --Q.6) Update few records to set MarginCode to A and some records MargonCode To B.
  update Product2 
  set MarginCode = 'A'
  where ProductId < 6

  update Product2 
  set MarginCode = 'B'
  where ProductId > 11

  --Q.7)Update all SetQty to 10 for all Items which have MarginCode A and whose original Setqty is 1.
  update Product2 
  set Setqty  = 10
  where MarginCode = 'A' and Setqty = 1

