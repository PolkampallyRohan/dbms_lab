from flask import request
from . import app
from dbhandler import Mysqlhandler

 
@app.route('/user/register',methods=["POST"])  
def add():  
    return Mysqlhandler.add_user("self",request.form['name'],request.form['phno'],request.form['dob']) 

@app.route('/user/update',methods=["POST"])  
def update():  
    return Mysqlhandler.update_user("self",request.form['name'],request.form['dob'],request.form['phno']) 

@app.route('/user/delete',methods=["POST"])  
def delete():  
    return Mysqlhandler.delete_user("self",request.form['phno'])          

@app.route('/user/view',methods=["GET"])  
def get_user():  
    return Mysqlhandler.display_users("self",request.form['name'])  








