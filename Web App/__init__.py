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
    
    if session['user_type']=='admin':
        return render_template('admin.html')
    elif session['user_type']=='caretaker':
        return render_template('caretaker2.html')
    elif session['user_type']=='student':
        return render_template('student.html')
    
    else:
        return render_template('login.html')

@app.route('/toggle')
def Toggle():
    # Check if the request contains a parameter indicating what to display
    display_hostels = request.args.get('hostels', False)
    display_students = request.args.get('students', False)
    display_person_details = request.args.get('person_details', False)
    display_stay_rooms = request.args.get('stay_rooms', False)
    display_housekeeper = request.args.get('housekeeper', False)
    display_room_allocation = request.args.get('room_allocation', False)
    display_caretaker = request.args.get('caretaker', False)
    display_eateries_shops = request.args.get('eateries_shops', False)
    display_furniture_utils = request.args.get('furniture_utils', False)
    display_rooms = request.args.get('rooms', False)
    display_store_common_rooms = request.args.get('store_common_rooms', False)
    if display_hostels:
        data = get_hostels()
    elif display_students:
        data = get_students()
    elif display_person_details:
        data = get_person_details()
    elif display_stay_rooms:
        data = get_stay_rooms()
    elif display_housekeeper:
        data = get_housekeeper()
    elif display_room_allocation:
        data = get_room_allocation() 
    elif display_caretaker:
        data = get_caretaker()
    elif display_eateries_shops:
        data = get_eateries_shops()
    elif display_furniture_utils:
        data = get_furniture_utils()
    elif display_rooms:
        data = get_rooms()
    elif display_store_common_rooms:
        data = get_store_common_rooms()
    else: 
        data = get_hostels()
    if session['user_type']=='admin':
        return render_template('admin.html',table = data)
    elif session['user_type']=='caretaker':
        return render_template('caretaker2.html',table = data)
    elif session['user_type']=='student':
        return render_template('student.html',table = data)
    else:
        return render_template('login.html')

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

def get_person_details():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM person_details")
    data = cur.fetchall()
    cur.close()
    return data

def get_stay_rooms():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM stay_rooms")
    data = cur.fetchall()
    cur.close()
    return data

def get_housekeeper():#select_housekeeper
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM housekeeper")
    data = cur.fetchall()
    cur.close()
    return data

def get_room_allocation():#select_room_allocation_relation
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM room_allocation_relation")
    data = cur.fetchall()
    cur.close()
    return data

def get_caretaker():#select_caretaker
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM caretaker")
    data = cur.fetchall()
    cur.close()
    return data


def get_eateries_shops():#select_eateries_shops
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM eateries_shops")
    data = cur.fetchall()
    cur.close()
    return data

def get_furniture_utils():#select_furniture_utils
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM furniture_utils")
    data = cur.fetchall()
    cur.close()
    return data

def get_rooms():#select_rooms
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM rooms")
    data = cur.fetchall()
    cur.close()
    return data


def get_store_common_rooms():#select_store_common_rooms
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM store_common_rooms")
    data = cur.fetchall()
    cur.close()
    return data

# Filters
@app.route('/select/hostels', methods = ['POST'])
def select_hostels():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        data= None
        try:
            cur.execute("SELECT * FROM hostels WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)


@app.route('/select/students', methods = ['POST'])
def select_students():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM students WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/person_details', methods = ['POST'])
def select_person_details():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        data = None
        try:
            cur.execute("SELECT * FROM person_details WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/stay_rooms', methods = ['POST'])
def select_stay_rooms():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        data= None
        try:
            cur.execute("SELECT * FROM stay_rooms WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/housekeeper', methods = ['POST'])
def select_housekeeper():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        data= None
        try:
            cur.execute("SELECT * FROM housekeeper WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/room_allocation', methods = ['POST'])
def select_room_allocation():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        data= None
        try:
            cur.execute("SELECT * FROM room_allocation_relation WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/caretaker', methods = ['POST'])
def select_caretaker():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        
        cur = mysql.connection.cursor()
        data= None
        try:
            cur.execute("SELECT * FROM caretaker WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
    
@app.route('/select/eateries_shops', methods = ['POST'])
def select_earteries_shops():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM eateries_shops WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)  
    
@app.route('/select/furniture_utils', methods = ['POST'])
def select_furniture_utils():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        data =None
        cur = mysql.connection.cursor()
        try:
            
            cur.execute("SELECT * FROM furniture_utils WHERE "+condition) #error here 
            data = cur.fetchall()
            
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)

@app.route('/select/rooms', methods = ['POST'])
def select_rooms():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select room where:',)#left 
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM rooms WHERE "+condition) #error here
            data = cur.fetchall() 
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)
   
@app.route('/select/store_common_rooms', methods = ['POST'])
def select_store_common_rooms():
    if request.method == 'POST':
        condition = request.form['name']
        # app.logger.info('Received POST request to select student where:',)#left 
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("SELECT * FROM store_common_rooms WHERE "+condition) #error here 
            data = cur.fetchall()
            mysql.connection.commit()
            # app.logger.info('Student deleted successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        if session['user_type']=='admin':
             return render_template('admin.html',table = data)
        elif session['user_type']=='caretaker':
            return render_template('caretaker2.html',table = data)
        elif session['user_type']=='student':
            return render_template('student.html',table = data)

#INSERT 
@app.route('/insert/hostels', methods = ['POST'])
def insert_hostels():
    if request.method == 'POST':
        name = request.form['hostel_name']
        total_rooms = request.form['total_rooms']
        gender = request.form['gender']
        occupancy_status = request.form['occupancy_status']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO hostels (`Name`, `Total Rooms`, `Gender`, `Occupancy Status`) VALUES (%s, %s, %s, %s)", (name, total_rooms, gender, occupancy_status)) #error here 
            flash("Data Inserted Successfully")
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))

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
        
        data= None
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

        return redirect(url_for('Toggle'))
    

@app.route('/insert/person_details', methods = ['POST'])
def insert_person_details():
    if request.method == "POST":
        roll_number = request.form['staff_id']
        first_name = request.form['first_name']
        middle_name = request.form['middle_name']
        contact_number = request.form['contact_number']
        email_id = request.form['email_id']
        date_of_birth = request.form['date_of_birth']
        gender = request.form['gender']
        country = request.form['country']
        state = request.form['state']
        city = request.form['city']
        street_society = request.form['street_society']

        # app.logger.info('Received POST request to add student: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO person_details (`Roll Number`, `First Name`, `Middle Name`, `Contact Number`, `Email ID`, `Date of Birth`, `Gender`, `Country`, `State`, `City`, `Street/Society`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (roll_number, first_name, middle_name, contact_number, email_id, date_of_birth, gender, country, state, city, street_society))
            flash("Data Inserted Successfully")
            mysql.connection.commit()
            # app.logger.info('Student added successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()

        return redirect(url_for('Toggle'))

@app.route('/insert/stay_rooms', methods = ['POST'])
def insert_stay_rooms():
    if request.method == 'POST':
        room_number = request.form['room_number']
        availability_status = request.form['availability_status']
        capacity = request.form['capacity']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO stay_rooms (`Roll Number`, `Availability Status`, `Capacity`) VALUES (%s, %s, %s)", (room_number,availability_status, capacity)) #error here 
            flash("Data Inserted Successfully")
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))
    
@app.route('/insert/housekeeper', methods = ['POST'])
def insert_housekeeper():
    if request.method == "POST":
        staff_id = request.form['staff_id']
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        middle_name = request.form['middle_name']
        contact_number = request.form['contact_number']
        email_id = request.form['email_id']
        date_of_birth = request.form['date_of_birth']
        date_of_joining = request.form['date_of_joining']
        gender = request.form['gender']
        country = request.form['country']
        state = request.form['state']
        city = request.form['city']
        street_society = request.form['street_society']

        # app.logger.info('Received POST request to add student: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO housekeeper (`Staff ID`, `First Name`, `Middle Name`, `Last Name`, `Contact Number`, `Email ID`, `Date of Birth`, `Date of Joining`, `Gender`, `Country`, `State`, `City`, `Street/Society`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth,date_of_joining, gender, country, state, city, street_society))
            flash("Data Inserted Successfully")
            mysql.connection.commit()
            # app.logger.info('Student added successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()

        return redirect(url_for('Toggle'))

@app.route('/insert/room_allocation', methods = ['POST'])
def insert_room_allocation():
    if request.method == 'POST':
        roll_number = request.form['roll_number']
        room_number = request.form['room_number']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO room_allocation_relation (`Student Roll Number`, `Room Number`) VALUES (%s, %s)", (roll_number,room_number)) #error here 
            flash("Data Inserted Successfully")
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle')) 
    
@app.route('/insert/caretaker', methods = ['POST'])
def insert_caretaker():
    if request.method == "POST":
        flash("Data Inserted Successfully")
        staff_id = request.form['staff_id']
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
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO caretaker (`Staff ID`, `First Name`, `Middle Name`, `Last Name`, `Contact Number`, `Email ID`, `Date of Birth`, `Date of Joining`, `Gender`, `Country`, `State`, `City`, `Street/Society`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society))
            mysql.connection.commit()
            app.logger.info('Student added successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()

        return redirect(url_for('Toggle'))

@app.route('/insert/eateries_shops', methods = ['POST'])
def insert_eateries_shops():
    if request.method == 'POST':
        room_number = request.form['room_number']
        name_of_shop = request.form['name_of_shop']
        owners_name = request.form['owners_name']
        opening_time = request.form['opening_time']
        closing_time = request.form['closing_time']
        holidays = request.form['holidays']
        owners_contact = request.form['owners_contact']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO eateries_shops  (`Room Number`, `Name of Shop`, `Owner's Name`, `Opening Time`, `Closing Time`, `Holidays`, `Owner's Contact`) VALUES (%s, %s, %s, %s,%s, %s, %s)", (room_number, name_of_shop, owners_name, opening_time, closing_time, holidays, owners_contact)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))

@app.route('/insert/furniture_utils', methods = ['POST'])
def insert_furniture_utils():
    if request.method == 'POST':
        room_number = request.form['room_number']
        number_of_chairs = request.form['number_of_chairs']
        number_of_tables = request.form['number_of_tables']
        number_of_beds = request.form['number_of_beds']
        number_of_matress = request.form['number_of_matress']
        number_of_curtains = request.form['number_of_curtains']
        company_of_extra_cupboard = request.form['company_of_extra_cupboard']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO furniture_utils  (`Room Number`, `Number of Chairs`, `Number of Tables`, `Number of Beds`, `Number of Matress`, `Number of Curtains`, `Company of Extra Cupboard`) VALUES (%s, %s, %s, %s,%s, %s, %s)", (room_number, number_of_chairs, number_of_tables, number_of_beds, number_of_matress, number_of_curtains, company_of_extra_cupboard)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))
    
@app.route('/insert/rooms', methods = ['POST'])
def insert_rooms():
    if request.method == 'POST':
        room_number = request.form['room_number']
        floor = request.form['floor']
        hostel_name = request.form['hostel_name']

        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO rooms (`Room Number`, `Floor`, `Hostel Name`) VALUES (%s, %s,  %s)", (room_number, floor, hostel_name)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))
    
@app.route('/insert/store_common_rooms', methods = ['POST'])
def insert_store_common_rooms():
    if request.method == 'POST':
        room_number = request.form['room_number']
        number_of_commodity = request.form['number_of_commodity']
        type_of_commodity = request.form['type_of_commodity']
        data= None
        cur = mysql.connection.cursor()
        try:
            cur.execute("INSERT INTO store_common_rooms (`Room Number`, `Number of Commodity`, `Type of Commodity`) VALUES ( %s, %s,  %s)",(room_number, number_of_commodity, type_of_commodity)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Toggle'))

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
    

@app.route('/delete_all/person_details', methods = ['POST'])
def delete_all_person_details():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM person_details WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
    
@app.route('/delete_all/stay_rooms', methods = ['POST'])
def delete_all_stay_rooms():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM stay_rooms WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
    
@app.route('/delete_all/housekeeper', methods = ['POST'])
def delete_all_housekeeper():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM housekeeper WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))

@app.route('/delete_all/room_allocation', methods = ['POST'])
def delete_all_room_allocation():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM room_allocation_relation WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
    
@app.route('/delete_all/caretaker', methods = ['POST'])
def delete_all():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM caretaker WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))

@app.route('/delete_all/eateries_shops', methods = ['POST'])
def delete_all_eateries_shops():
     if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM eateries_shops WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
     

@app.route('/delete_all/furniture_utils', methods = ['POST'])
def delete_all_furniture_utils():
    if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM caretaker WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))


@app.route('/delete_all/rooms', methods = ['POST'])
def delete_all_rooms():
     if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM rooms WHERE " + condition)
        flash("Data Deleted Successfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
     
@app.route('/delete_all/store_common_rooms', methods = ['POST'])
def delete_all_store_common_rooms():
     if request.method == 'POST':
        condition = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("DELETE FROM store_common_rooms WHERE " + condition)
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
    return redirect(url_for('Toggle'))

@app.route('/delete/students/<string:roll_number>', methods = ['GET'])
def delete_students(roll_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM students WHERE (`Roll Number`=%s)", [roll_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Toggle'))

@app.route('/delete/person_details/<string:staff_id>', methods = ['GET'])
def delete_person_details(staff_id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM person_details WHERE (`Roll Number`=%s)", [staff_id])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Toggle'))

@app.route('/delete/stay_rooms/<string:room_number>', methods = ['GET'])
def delete_stay_rooms(room_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM stay_rooms WHERE (`Room Number`=%s)", [room_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Toggle'))

@app.route('/delete/housekeeper/<string:staff_id>', methods = ['GET'])
def delete_housekeeper(staff_id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM housekeeper WHERE (`Staff ID`=%s)", [staff_id])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Toggle'))

@app.route('/delete/room_allocation/<string:roll_number>', methods = ['GET'])
def delete_room_allocation(roll_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM room_allocation_relation WHERE (`Student Roll Number`=%s)", [roll_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Toggle'))

@app.route('/delete/caretaker/<string:staff_id>', methods = ['GET'])
def delete_caretaker(staff_id):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM caretaker WHERE (`Staff ID`=%s)", [staff_id])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Index'))

@app.route('/delete/eateries_shops/<string:room_number>', methods = ['GET'])
def delete_eateries_shops(room_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM eateries_shops WHERE (`Room Number`=%s)", (room_number,))
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Index'))

@app.route('/delete/furniture_utils/<string:room_number>', methods = ['GET'])
def delete_furniture_utils(room_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM furniture_utils WHERE (`Room Number`=%s)", [room_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Index'))

@app.route('/delete/rooms/<string:room_number>', methods = ['GET'])
def delete_rooms(room_number):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM rooms WHERE (`Room Number`=%s)", [room_number])
    mysql.connection.commit()
    flash("Record Has Been Deleted Successfully")
    return redirect(url_for('Index'))

@app.route('/delete/store_common_rooms/<string:room_number>', methods = ['GET'])
def delete_store_common_rooms(room_number):
    flash("Record Has Been Deleted Successfully")
    cur.execute("DELETE FROM store_common_rooms WHERE (`Room Number`=%s)", [room_number])
    mysql.connection.commit()
    cur = mysql.connection.cursor()
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
def update_students():
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
    
@app.route('/update/person_details',methods=['POST','GET'])
def update_person_details():
    if request.method == 'POST':
        roll_number = request.form['staff_ID']
        first_name = request.form['first_name']
        middle_name = request.form['middle_name']
        contact_number = request.form['contact_number']
        email_id = request.form['email_id']
        date_of_birth = request.form['date_of_birth']
        gender = request.form['gender']
        country = request.form['country']
        state = request.form['state']
        city = request.form['city']
        street_society = request.form['street_society']

        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE person_details SET `Roll Number` = %s, `First Name` = %s, `Middle Name` = %s, `Contact Number` = %s, `Email ID` = %s, `Date of Birth` = %s, `Gender` = %s, `Country` = %s, `State` = %s, `City` = %s, `Street/Society` = %s WHERE `Roll Number` = %s", (roll_number, first_name, middle_name, contact_number, email_id, date_of_birth,gender, country, state, city, street_society, roll_number)) #error here 
            mysql.connection.commit()
            # app.logger.info('Student updated successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/stay_rooms',methods = ['POST'])
def update_stay_rooms():   
    if request.method == 'POST':
        print("hello")
        room_number = request.form['room_number']
        availability_status = request.form['availability_status']
        capacity = request.form['capacity']
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE stay_rooms SET  `Room Number` = %s, `Availability Status` = %s, `Capacity` = %s WHERE `Room Number` = %s", (room_number, availability_status, capacity, room_number)) #error here 
            mysql.connection.commit()
            flash("Data Updated Successfully")
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/housekeeper',methods=['POST','GET'])
def update_housekeeper():
    if request.method == 'POST':
        staff_id = request.form['staff_ID']
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

        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE housekeeper SET `Staff ID` = %s, `First Name` = %s, `Middle Name` = %s, `Last Name` = %s, `Contact Number` = %s, `Email ID` = %s, `Date of Birth` = %s, `Date of Joining` = %s, `Gender` = %s, `Country` = %s, `State` = %s, `City` = %s, `Street/Society` = %s WHERE `Staff ID` = %s", (staff_id, first_name, middle_name,last_name, contact_number, email_id, date_of_birth, date_of_joining,gender, country, state, city, street_society, staff_id)) #error here 
            mysql.connection.commit()
            flash("Data Updated Successfully")
            # app.logger.info('Student updated successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s, Discipline - %s, Batch - %s, On Roll Status - %s', roll_number, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, discipline, batch, on_roll_status)
        except Exception as e:
            app.logger.error('Error adding to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/room_allocation',methods = ['POST'])
def update_room_allocation():   
    if request.method == 'POST':
        print("hello")
        roll_number = request.form['roll_number']
        room_number = request.form['room_number']
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE room_allocation_relation SET  `Student Roll Number` = %s, `Room Number` = %s WHERE `Student Roll Number` = %s", (roll_number,room_number,roll_number)) #error here 
            mysql.connection.commit()
            flash("Data Updated Successfully")
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/caretaker',methods=['POST','GET'])
def update_caretaker():
    if request.method == 'POST':
        staff_id = request.form['staff_id']
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
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE caretaker SET `Staff ID` = %s, `First Name` = %s, `Middle Name` = %s, `Last Name` = %s, `Contact Number` = %s, `Email ID` = %s, `Date of Birth` = %s, `Date of Joining` = %s, `Gender` = %s, `Country` = %s, `State` = %s, `City` = %s, `Street/Society` = %s WHERE `Staff ID` = %s", (staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society, staff_id)) #error here 
            mysql.connection.commit()
            # app.logger.info('Student updated successfully: Roll Number - %s, First Name - %s, Middle Name - %s, Last Name - %s, Contact Number - %s, Email ID - %s, Date of Birth - %s, Date of Joining - %s, Gender - %s, Country - %s, State - %s, City - %s, Street/Society - %s', staff_id, first_name, middle_name, last_name, contact_number, email_id, date_of_birth, date_of_joining, gender, country, state, city, street_society)
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/eateries_shops',methods = ['POST'])
def update_eateries_shops():
    if request.method == 'POST':
        room_number = request.form['room_number']
        name_of_shop = request.form['name_of_shop']
        owners_name = request.form['owners_name']
        opening_time = request.form['opening_time']
        closing_time = request.form['closing_time']
        holidays = request.form['holidays']
        owners_contact = request.form['owners_contact']

        # where_room_number = request.form['where_room_number']

        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE eateries_shops SET `Room Number` = %s, `Name of Shop` = %s, `Owner's Name` = %s, `Opening Time` = %s, `Closing Time` = %s, `Holidays` = %s, `Owner's Contact` = %s WHERE `Room Number` = %s", (room_number, name_of_shop, owners_name, opening_time, closing_time, holidays, owners_contact, room_number)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/furniture_utils',methods = ['POST'])
def update_furniture_utils():   
    if request.method == 'POST':
        room_number = request.form['room_number']
        number_of_chairs = request.form['number_of_chairs']
        number_of_tables = request.form['number_of_tables']
        number_of_beds = request.form['number_of_beds']
        number_of_matress = request.form['number_of_matress']
        number_of_curtains = request.form['number_of_curtains']
        company_of_extra_cupboard = request.form['company_of_extra_cupboard']

        # where_room_number = request.form['room_number']
        
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE furniture_utils SET `Room Number` = %s, `Number of Chairs` = %s, `Number of Tables` = %s, `Number of Beds` = %s, `Number of Matress` = %s, `Number of Curtains` = %s, `Company of Extra Cupboard` = %s WHERE `Room Number` = %s", (room_number, number_of_chairs, number_of_tables, number_of_beds, number_of_matress, number_of_curtains, company_of_extra_cupboard, room_number )) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))
    
@app.route('/update/rooms',methods = ['POST'])
def update_rooms():   
    if request.method == 'POST':
        room_number = request.form['room_number']
        floor = request.form['floor']
        hostel_name = request.form['hostel_name']

        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE rooms SET  `Room Number` = %s, `Floor` = %s, `Hostel Name` = %s WHERE  `Room Number` = %s", (room_number, floor, hostel_name, room_number)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))@app.route('/update/store_common_rooms',methods = ['POST'])
    
@app.route('/update/store_common_rooms',methods = ['POST'])
def update_store_common_rooms():   
    if request.method == 'POST':
        room_number = request.form['room_number']
        number_of_commodity = request.form['number_of_commodity']
        type_of_commodity = request.form['type_of_commodity']
        # where_room_number = request.form['room_number']
        cur = mysql.connection.cursor()
        try:
            cur.execute("UPDATE store_common_rooms SET  `Room Number` = %s, `Number of Commodity` = %s, `Type of Commodity` = %s WHERE  `Room Number` = %s", (room_number, number_of_commodity, type_of_commodity, room_number)) #error here 
            mysql.connection.commit()
        except Exception as e:
            app.logger.error('Error adding student to database: %s', str(e))
        finally:
            cur.close()
        return redirect(url_for('Index'))

if __name__ == "__main__":
    app.run(debug=True)