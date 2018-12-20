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
app.config['MYSQL_DATABASE_PASSWORD'] = 'admin1234'
app.config['MYSQL_DATABASE_DB'] = 'empl'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()

#main page
@app.route('/')
def main():
    return render_template('index.html')

#log out
@app.route('/logOut', methods=['POST'])
def logOut():
    app.config['MYSQL_DATABASE_USER'] = 'root'
    app.config['MYSQL_DATABASE_PASSWORD'] = 'admin1234'
    global conn
    global cursor
    conn = mysql.connect()
    cursor = conn.cursor()
    return 'something'


#getUsername
@app.route('/getUsername', methods=['POST'])
def getUsername():
    return app.config['MYSQL_DATABASE_USER']

#sign in
@app.route('/showSignIn/')
def showSignIn():
    return render_template('signin.html')

@app.route('/signIn', methods=['POST'])
def signIn():
    username = request.form['username']
    userpass = request.form['userpass']
    app.config['MYSQL_DATABASE_USER'] = 'root'
    app.config['MYSQL_DATABASE_PASSWORD'] = 'admin1234'
    global conn
    global cursor
    conn = mysql.connect()
    cursor = conn.cursor()
    return 'something'

#sign up
@app.route('/showSignUp/')
def showSignUp():
    if app.config['MYSQL_DATABASE_USER']!='root':
        return render_template('accessdenied.html')
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
    if app.config['MYSQL_DATABASE_USER']=='guest':
        return render_template('accessdenied.html')
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
    if app.config['MYSQL_DATABASE_USER']=='guest':
        return render_template('accessdenied.html')
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
    if app.config['MYSQL_DATABASE_USER']=='guest':
        return render_template('accessdenied.html')
    return render_template('addEmployeeToProduct.html')

@app.route('/addEmployeeToProduct', methods=['POST'])
def addEmployeeToProduct():
    print (request.form)
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


    print ('/n/n/n hi /n/n/n/')
    print (request.form)

    employeename = request.form['employeename']


    print ('/n/n/n hi /n/n/n/')

    cursor.callproc('findProductByEmployee', (employeename,'kek'))

    print ('/n/n/n hi /n/n/n/')

    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

#find employees by product
@app.route('/showFindEmployeesByProduct/')
def showFindEmployeesByProduct():
    return render_template('findEmployeesByProduct.html')

@app.route('/findEmployeesByProduct', methods=['POST'])
def findEmployeesByProduct():

    print (request.form)

    productname = request.form['productname']
    cursor.callproc('findEmployeesByProduct', (productname,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

#addProductLine
@app.route('/showAddProductline/')
def showAddProductLine():
    if app.config['MYSQL_DATABASE_USER']!='root':
        return render_template('accessdenied.html')
    return render_template('addProductLine.html')

@app.route('/addProductline', methods=['POST'])
def addProductLine():
    productlinename = request.form['productlinename']
    productlinedescription = request.form['productlinedescription']
    cursor.callproc('addProductLine', (productlinename,productlinedescription))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

#addProductToProductline
@app.route('/showAddProductToProductline/')
def showAddProductToProductline():
    if app.config['MYSQL_DATABASE_USER']!='root':
        return render_template('accessdenied.html')
    return render_template('addProductToProductline.html')

@app.route('/addProductToProductline', methods=['POST'])
def addProductToProdutline():
    productname = request.form['prname']
    productlinename = request.form['linename']
    cursor.callproc('addProductToProductline', (productname,productlinename))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

@app.route('/showProfile/<username>')
def showProfile(username):
    return render_template('profile.html')

@app.route('/getProfile/<username>', methods=['POST'])
def getProfile(username):
    cursor.callproc('getProfile', (username, 'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps(data)

@app.route('/showGetUsers')
def showGetUserse():
    return render_template('getUsers.html')

@app.route('/getUsers', methods=['POST'])
def getUsers():
    print ('\n\n\n##### ##### ##### ##### getUsers first ##### ##### ##### ##### \n\n\n')

    print(app.config['MYSQL_DATABASE_USER'])
    print(app.config['MYSQL_DATABASE_PASSWORD'])
    print(app.config['MYSQL_DATABASE_DB'])
    print(app.config['MYSQL_DATABASE_HOST'])

    cursor.callproc('getUsers')

    print ('\n\n\n##### ##### ##### ##### second ##### ##### ##### ##### \n\n\n')
    data = cursor.fetchall()
    print ('\n\n\n##### ##### ##### ##### third ##### ##### ##### ##### \n\n\n')

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps({'response': data})

@app.route('/getProducts', methods=['POST'])
def getProducts():
    cursor.callproc('getProducts')
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps({'response': data})

@app.route('/getLines', methods=['POST'])
def getLines():
    cursor.callproc('getLines')
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps({'response': data})

@app.route('/getTable', methods=['POST'])
def getTable():
    tablename = request.form['tablename']
    cursor.callproc('getTable',(tablename,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps({'response': data})

@app.route('/getActive', methods=['POST'])
def getActive():
    print('!!!!')
    left = request.form['left']
    right = request.form['right']
    print('!!!!')
    print(left)
    print(right)
    cursor.callproc('findActivePr',(left,right))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'fail!'})
    else:
        return json.dumps({'response': data})

@app.route('/findProductByClients', methods=['POST'])
def findProductByClient():
    client = request.form['searchinput']
    cursor.callproc('productOfClient', (client,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

@app.route('/empbydist', methods=['POST'])
def empbydist():
    client = request.form['searchinput']
    cursor.callproc('EmpByDist', (client,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

@app.route('/prbyline', methods=['POST'])
def prbyline():
    client = request.form['searchinput']
    cursor.callproc('prbyline', (client,'kek'))
    data = cursor.fetchall()

    if len(data) is 0:
        conn.commit()
        return json.dumps({'message': 'User created successfully !'})
    else:
        return json.dumps({'response': data})

if __name__ == "__main__":
    app.run(debug=True)
