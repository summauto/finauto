from yahooquery
from pandas.io import sql
import MySQLdb

con = MySQLdb.connect()

sql.write_frame(df, con=con, name='table_name_for_df', if_exists='replace', flavor='mysql')

################################## sample code to update database with python ###############################
# import mysql.connector

# mydb = mysql.connector.connect(
#   host="localhost",
#   user="yourusername",
#   password="yourpassword",
#   database="mydatabase"
# )

# mycursor = mydb.cursor()

# sql = "UPDATE customers SET address = 'Canyon 123' WHERE address = 'Valley 345'"

# mycursor.execute(sql)

# mydb.commit()

# print(mycursor.rowcount, "record(s) affected")
#############################################################################################################3

