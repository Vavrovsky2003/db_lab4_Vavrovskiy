import psycopg2
import matplotlib.pyplot as plt

username = 'Vavrovskiy_Viktor'
password = 'postgres'
database = 'laboratoryworks'
host = 'localhost'
port = '5432'

query_1 = '''
Select Airport.Airport_id, Count (airline) 
From Airport Left Join flight_route
On Airport.Airport_id=flight_route.Destination_Airport
Group By Airport.Airport_id 

'''

query_2 = '''
Select Airport.Airport_id, Count (airline) 
From Airport Left Join flight_route
On Airport.Airport_id=flight_route.Origin_Airport
Group By Airport.Airport_id 

'''

query_3 = '''
Select Airport.airport_id, Count (flight_number) 
From Airport Left Join flight_route
On Airport_id=Origin_Airport
Group By Airport.airport_id

'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur = conn.cursor()

    cur.execute(query_1)
    print("Query 1")
    for row in cur:
        print(row)
    print("\n")

    cur.execute(query_2)
    print("Query 2")
    for row in cur:
        print(row)
    print("\n")

       
    cur.execute(query_3)
    print("Query 3")
    for row in cur:
        print(row)
    print("\n")


