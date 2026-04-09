import mysql.connector
#root is typically theuser people use so erm ja

try:
    c=mysql.connector.connect(host='localhost',user='root',password='yourpassword',database='learn')
    if c.is_connected():
        print("it's connected to the wec thingy m8")
        d=input("Enter the name of the driver name to search:")
        cursor=c.cursor()
        q="select*from wecgrid where Drivers like %s"
        cursor.execute(q,(f"%{d}%",))
        r=cursor.fetchall()
        if r:
            for row in r:
                print(f"\n----Entry found---")
                print(f"Car #{row[0]} | Manufacturer: {row[3]} | Car: {row[2]} | Class: {row[6]}")
                print(f"Team: {row[1]} | Driver: {row[4]} | Nationality: {row[5]}")
        else:
            print("Driver isn't competing in 2026 season or you named them wrong or this database has name wrong soz")
except Exception as e:
    print(f"Error: {e}")
finally:
    if 'c' in locals() and c.is_connected():
        c.close()
