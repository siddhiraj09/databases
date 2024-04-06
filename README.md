# DBMS Assignment 3 - Hostel Management Database Webapp

## Made with Flask and MySQL

We used html, css and and JS to design the frontend, the login page and different profile page for every user. We also used bootstrap  a pre-designed CSS framework. Then for backend we used Flask. The database was made in mySQL

## Setup Required

1. Install Python 3.10.9 

2. Install MySQL 5.7 or better

3. Install the required packages for python: 

    bash
    pip install flask
    pip install flask-mysql
    

    Run the above commands in the terminal in order to install the required packages.

4. Use the hostel Mnagaement Database created in assignment 1 and 2. 
5. Following are the crediantials for each user present in script.js:
 js
    student - Username        Password-123
    admin - Username        Password-123
    caretaker - Username    Password-123


## How to Run the Webapp?

1. Open the terminal and navigate to the directory where the 'init.py' file is located.

2. Run the following command in the terminal:

    bash
    python _init_.py
    

    Or you can simply click on the 'Run' button in your IDE for the 'init.py' file.

3. Open your browser and go to the URL that is displayed in the terminal, like this:

    bash
    http://127.0.0.1:5000
    
    
This brings home page of the webapp. Different pages open for different credentials

### Login Screen
 ![Login Screen]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.14.55.jpeg  )

### Users
1. Admin: He can view, edit, delete and filter in all tables
 ![Admin tables]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.14.55%20(1).jpeg)
2. Student:  He can view only view all tables
 ![Student tables]( https://github.com/siddhiraj09/databases/blob/main/img/stud.jpeg)
3. Caretaker: He can view all tables, but edit and delete entries in certain specific tables only. Also he can't add new data. Data addition can be done by admin only. 
 ![Caretaker tables]( https://github.com/siddhiraj09/databases/blob/main/img/care.jpeg)


 ### Operations
1. Insert
    * Before, a form opens ![Insert Before]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.19.38%20(2).jpeg   )
    * After ![Insert After](https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.19.37.jpeg)( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.19.38%20(3).jpeg    )
2. Update
    * Before, a form opens ![Update Before](   https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.32.50.jpeg  )
    * After ![Update After]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.32.50%20(1).jpeg )
3. Delete
    * Before, a form opens ![Delete Before]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.21.53.jpeg )(https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.21.53.jpeg)
    * After ![Delete After]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.21.54%20(1).jpeg )
4. Where (Filter)
    * Before, a form opens. Enter your query ![Filter Before](https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.14.56%20(1).jpeg)
    * Query ![Filter After](https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.14.57%20(2).jpeg)
    * After ![Filter After](https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.14.57%20(1).jpeg )
5. Delete Multiple Entries
    * Before, a form opens ![Delete all Before]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.36.55%20(1).jpeg  )
    * Query ![Delete all Before]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.36.55%20(2).jpeg )
    * After ![Delete all After]( https://github.com/siddhiraj09/databases/blob/main/img/WhatsApp%20Image%202024-04-06%20at%2016.36.55.jpeg )

<!-- ### Student
1. Student is only allowed to view specific tables. He can't insert, delete or update any information.
   view
   * hostels table  ![Insert Before](     )
   * room allocation table  ![Insert Before](     )
   
### Admin
1. Admin can view, edit, delete and update all tables. 
   View
   * hostels table  ![View Before](     )
   * room allocation table  ![View Before](     )
   
   Edit/Update 
   * Hostels table, Before, a form opens ![Update Before](     )
   * Hostels table, After ![Update After](      )
   * Room Allocation table, Before, a form opens ![Update Before](     )
   * Room Allocation table, After ![Update After](      )
  

   Delete 
   * Hostels table, Before, a form opens ![Delete Before](     )
   * Hostels table, After ![Delete After](      )
   * Room Allocation table, Before, a form opens ![Delete Before](     )
   * Room Allocation table, After ![Delete After](      )
      

   Add Data
   * Hostels table, Before, a form opens ![Insert Before](     )
   * Hostels table, After ![Insert After](      )
   * Room Allocation table, Before, a form opens ![Insert Before](     )
   * Room Allocation table, After ![Insert After](      )
  

   Filter
   * Hostels table, Before, a form opens. Enter your Query ![Filter Before](     )
   * Hostels table, After ![Filter After](      )
   * Room Allocation table, Before, a form opens. Enter your Query ![Filter Before](     )
   * Room Allocation table, After ![Filter After](      )

   Delete All
   * Hostels table, Before, a form opens. Enter your Query ![Delete All](     )
   * Hostels table, After ![Delete All](      )
   * Room Allocation table, Before, a form opens. Enter your Query ![Delete All](     )
   * Room Allocation table, After ![Delete All](      ) -->
 
## Work Distribution
### Disha Chopra 
Developed page for caretaker view, managed and resolved errors in the same. 
Teste and debugged the database and web app. 

### Hirva Patel
Worked on backend and integrating it with front-end.
Developed back-end function calls
Helped in resolving errors and debugging in front end.

### Harshi Chandrafari
Developed the frontend using HTML, CSS, and Tailwind CSS
Worked extensively of front-end, resolving errors, making html pages, integrating bootstrap, Javascript, Jquery and Flask. 
Worked on the integration of pages with the backend

### Siddhi Rajpurohit
Worked in front-end form functions development
Created README file and supervised work
Supervised worl

### Dhruv Gupta
Developed the frontend using HTML, CSS, and Tailwind CSS
Worked extensively of front-end, resolving errors, making html pages, integrating bootstrap, Javascript, Jquery and Flask. 
Worked on the integration of pages with the backend

### Divyanshu Pandey
Worked in front-end form development. 
Contributed in README and supervised work

### Shubham More
Worked on README file, helped in front-end function creations.