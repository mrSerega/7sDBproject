from flask import Flask
from flask import url_for
from flask import request
from flask import render_template
from flask import Markup
from flask import request
import json
from flaskext.mysql import MySQL
#from werkzeug import generate_password_hash, check_password_hash

app = Flask(__name__)

mysql = MySQL()

app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '1234'
app.config['MYSQL_DATABASE_DB'] = 's7dbproject'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()

#main page
@app.route('/')
def main():
    return render_template('index.html')

#sign up
@app.route('/showSignUp/')
def showSignUp():
    return render_template('signup.html')

@app.route('/signUp', methods=['POST'])
def signUp():
    _name = request.form['inputName']
    _password = request.form['inputPassword']
    _hashed_password =  _password#generate_password_hash(_password)
    cursor.callproc('sp_createUser', (_name,_hashed_password))
    data = cursor.fetchall()

    if len(data) is 0:
       conn.commit()
       return json.dumps({'message': 'User created successfully !'})
    else:
       return json.dumps({'error': str(data[0])})

#add employee
@app.route('/showAddEmployee/')
def showAddEmployee():
    return render_template('addEmployee.html')

@app.route('/addEmployee', methods=['POST'])
def addEmployee():
    fullname = request.form['fullname']
    position = request.form['position']
    cursor.callproc('addEmployee', (fullname, position))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'error': str(data[0])})

#add product
@app.route('/showAddProduct/')
def showAddProduct():
    return render_template('addProduct.html')

@app.route('/addProduct', methods=['POST'])
def addProduct():
    productname = request.form['productname']
    productdescription = request.form['productdescription']
    cursor.callproc('addProduct', (productname, productdescription))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'error': str(data[0])})

#add employee to product
@app.route('/showAddEmployeeToProduct/')
def showAddEmployeeToProduct():
    return render_template('addEmployeeToProduct.html')

@app.route('/addEmployeeToProduct', methods=['POST'])
def addEmployeeToProduct():
    employeename = request.form['employeename']
    productname = request.form['productname']
    cursor.callproc('addEmployeeToProduct', (employeename, productname))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'error': str(data[0])})

#find product by employee
@app.route('/showFindProductByEmployee/')
def showFindProductByEmployee():
    return render_template('findProductByEmployee.html')

@app.route('/findProductByEmployee', methods=['POST'])
def findProductByEmployee():
    employeename = request.form['employeename']
    cursor.callproc('findProductByEmployee', (employeename,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

if __name__ == "__main__":
    app.run(debug=True)