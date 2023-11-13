--1. Кількість аероперевізників, літаки яких, прибували в кожен аеропорт  
Select Destination_Airport.IATA_code, Count (airline) 
From Destination_Airport Left Join flight_route
On Destination_Airport=IATA_code
Group By Destination_Airport.IATA_code 

--2. Кількість аероперевізників, літаки яких, відправлялися з кожного аеропорта 
Select Origin_Airport.IATA_code, Count (airline) 
From Origin_Airport Left Join flight_route
On Origin_Airport=IATA_code
Group By Origin_Airport.IATA_code 

--3. Кількість рейсів, що, вилітали з кожного аеропорту 
Select Origin_Airport.IATA_code, Count (flight_number) 
From Origin_Airport Left Join flight_route
On Origin_Airport=IATA_code
Group By Origin_Airport.IATA_code 


