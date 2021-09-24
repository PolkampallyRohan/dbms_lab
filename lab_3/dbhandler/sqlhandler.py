import mysql.connector
cnx = mysql.connector.connect(user="root", passwd="pwd", db="UserDB")

#inplace of "pwd" please use your appropriate password

cursor = cnx.cursor()

class Mysqlhandler:
    def __init__(self):
        pass
    def add_user(self,value1,value2,value3):
        query="INSERT INTO user_data values('{}',{},'{}')".format(value1,value2,value3)
        cursor.execute(query)
        cnx.commit()
    def update_user(self,name,dob,pno):
        query=("update user_data set name='{}',dob='{}' where phno={}".format(name,dob,pno))
        cursor.execute(query)
        cnx.commit()
       
    def delete_user(self,name):
        query=("Delete from user_data  where name='{}'".format(name))
        cursor.execute(query)
        cnx.commit()
       
    def display_users(self,value):
        query=("select * from user_data where name='{}'".format(value))
        cursor.execute(query)
        result = cursor.fetchall()
        print(result)

def main():
  #  obj=  Mysqlhandler()
  #  obj.add_user('dwayne',3426,'1910-01-19')
  #  obj.add_user('adolf',7868,'2199-09-24')
  #  obj.update_user('adolf','2319-07-30',7868)
  #  obj.delete_user('adolf')
  #  obj.display_users('dwayne')

if __name__=="__main__":
    main()







