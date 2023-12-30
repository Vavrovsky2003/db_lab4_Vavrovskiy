--1. Кількість аероперевізників, літаки яких, прибували в кожен аеропорт  
Select Airport.Airport_id, Count (airline) 
From Airport Left Join flight_route
On Airport.Airport_id=flight_route.Destination_Airport
Group By Airport.Airport_id 

--2. Кількість аероперевізників, літаки яких, відправлялися з кожного аеропорта 
Select Airport.Airport_id, Count (airline) 
From Airport Left Join flight_route
On Airport.Airport_id=flight_route.Origin_Airport
Group By Airport.Airport_id 

--3. Кількість рейсів, що, вилітали з кожного аеропорту 
Select Airport.airport_id, Count (flight_number) 
From Airport Left Join flight_route
On Airport_id=Origin_Airport
Group By Airport.airport_id


