from flask import Flask, render_template, request, redirect, url_for, flash, session

from flask_mysqldb import MySQL

app = Flask(__name__)
app.secret_key = 'many random bytes'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Pintu@1810'
app.config['MYSQL_DB'] = 'hostel_management_final'

mysql = MySQL(app)

@app.route('/logout')
def logout():
    session.clear()  # Clear the session data
    return redirect(url_for('Index'))  # Redirect to the login page


@app.route('/login', methods = ['POST'])
def login():
    # Simulating authentication - Replace with actual authentication logic
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
        user = cur.fetchone()
        cur.close()
        if user:
            session['logged_in'] = True
            session['user_type'] = username
        else:
            session['logged_in'] = False
            flash("Incorrect Credentials")
        return redirect(url_for('Index'))
    
@app.route('/')
def Index():
    if 'logged_in' not in session:
        session['logged_in'] = False  # Initialize session variable if not set
    if not session['logged_in']:
        return render_template('login.html')
    else:
        if session['user_type']=='admin':
            return render_template('admin.html')
        else:
            return render_template('login.html')

@app.route('/toggle')
def toggle():
    # Check if the request contains a parameter indicating what to display
    display_hostels = request.args.get('hostels', False)
    display_students = request.args.get('students', False)
    if display_hostels:
        data = get_hostels()
    elif display_students:
        data = get_students()
    else: 
        data = get_hostels()
    return render_template('admin.html', table=data)

def get_hostels():#select_hostels
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM hostels")
    data = cur.fetchall()
    cur.close()
    return data

def get_students():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM students")
    data = cur.fetchall()
    cur.close()
    return data

# Filters
@app.route('/select/hostels', methods = ['POST'])
def select_hostels():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM hostels WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return render_template('admin.html', table=data)

@app.route('/select/students', methods = ['POST'])
def select_students():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM students WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return render_template('admin.html', table=data)
    
#Insert
@app.route('/insert/hostels', methods = ['POST'])
def insert_hostels():
    if request.method == 'POST':
        name = request.form['hostel_name']
        total_rooms = request.form['total_rooms']
        gender = request.form['gender']
        occupancy_status = request.form['occupancy_status']

        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO hostels (`Name`, `Total Rooms`, `Gender`, `Occupancy Status`) VALUES (%s, %s, %s, %s)", (name, total_rooms, gender, occupancy_status)) #error here 
            flash("Data Inserted Successfully")
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('toggle'))

@app.route('/insert/students', methods = ['POST'])
def insert_students():
    if request.method == "POST":
        roll_number = request.form['roll_number']
        first_name = request.form['first_name']
        middle_name = request.form['middle_name']
        last_name = request.form['last_name']
        contact_number = request.form['contact_number']
        email_id = request.form['email_id']
        date_of_birth = request.form['date_of_birth']
        date_of_joining = request.form['date_of_joining']
        gender = request.form['gender']
        country = request.form['country']
        state = request.form['state']
        city = request.form['city']
        street_society = request.form['street_society']
        discipline = request.form['discipline']
        batch = request.form['batch']
        on_roll_status = request.form['on_roll_status']

        # app.logger.info('Received POST request to add student: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        
        
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO students (`Roll Number`, `First Name`, `Middle Name`, `Last Name`, `Contact Number`, `Email ID`, `Date of Birth`, `Date of Joining`, `Gender`, `Country`, `State`, `City`, `Street/Society`, `Discipline`, `Batch`, `On Roll Status`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status))
            flash("Data Inserted Successfully")
            mysql.connection.commit()
            # app.logger.info('Student added successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()

        return redirect(url_for('Index'))
    
# Delete Multi
@app.route('/delete_all/hostels', methods = ['POST'])
def delete_all_hostels():
     if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM hostels WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
     
@app.route('/delete_all/students', methods = ['POST'])
def delete_all_students():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM students WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))

    
#Delete single
@app.route('/delete/hostels/<string:name>', methods = ['GET'])
def delete_hostels(name):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM hostels WHERE (`Name`=%s)",[name])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    cur = mysql.connection.cursor()
    return redirect(url_for('toggle'))

@app.route('/delete/students/<string:roll_number>', methods = ['GET'])
def delete_students(roll_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM students WHERE (`Roll Number`=%s)", [roll_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Index'))

#Update
@app.route('/update/hostels',methods = ['POST'])
def update_hostels():   
    if request.method == 'POST':
        print("hello")
        edited_name = request.form['hostel_name']
        total_rooms = request.form['total_rooms']
        gender = request.form['gender']
        occupancy_status = request.form['occupancy_status']
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE hostels SET  `Name` = %s, `Total Rooms` = %s, `Gender` = %s, `Occupancy Status` = %s WHERE `Name` = %s", (edited_name, total_rooms, gender, occupancy_status, edited_name)) #error here 
            mysql.connection.commit()
            flash("Data Updated Successfully")
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))

@app.route('/update/students',methods=['POST','GET'])
def update():
    if request.method == 'POST':
        roll_number = request.form['roll_number']
        first_name = request.form['first_name']
        middle_name = request.form['middle_name']
        last_name = request.form['last_name']
        contact_number = request.form['contact_number']
        email_id = request.form['email_id']
        date_of_birth = request.form['date_of_birth']
        date_of_joining = request.form['date_of_joining']
        gender = request.form['gender']
        country = request.form['country']
        state = request.form['state']
        city = request.form['city']
        street_society = request.form['street_society']
        discipline = request.form['discipline']
        batch = request.form['batch']
        on_roll_status = request.form['on_roll_status']

        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE students SET `Roll Number` = %s, `First Name` = %s, `Middle Name` = %s, `Last Name` = %s, `Contact Number` = %s, `Email ID` = %s, `Date of Birth` = %s, `Date of Joining` = %s, `Gender` = %s, `Country` = %s, `State` = %s, `City` = %s, `Street/Society` = %s, `Discipline` = %s, `Batch` = %s, `On Roll Status` = %s WHERE `Roll Number` = %s", (roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status, roll_number)) #error here 
            mysql.connection.commit()
            # app.logger.info('Student updated successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))

if __name__ == "__main__":
    app.run(debug=True)