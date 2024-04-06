function isStateSaved(variableName) {
    return sessionStorage.getItem(variableName) !== null;
}

// Save state
function saveState(variableName, value) {
    sessionStorage.setItem(variableName, JSON.stringify(value));
}

// Retrieve state
function loadState(variableName) {
    const value = sessionStorage.getItem(variableName);
    return value ? JSON.parse(value) : null;
}


function init() {

    if (isStateSaved('hostels')) {
        hostels = loadState('hostels')
        students=loadState('students')
    } else {
        saveState('hostels', hostels)
        saveState('students',students)
    }

    if (hostels) {
        document.getElementById("hostel_table").style.display = 'block';
    }
    else if(students) {
        document.getElementById("student_table").style.display = 'block';
    }

    document.getElementById('hostels_nav').addEventListener('click', function() {
        hostels = true
        students = false
        saveState('hostels', hostels)
        saveState('students', students)
        var url = '/toggle?hostels=' + hostels;
        // Send AJAX request to the server
        var xhr = new XMLHttpRequest();
        xhr.open('GET', url);
        xhr.onload = function() {
            if (xhr.status === 200) {
                // Update the content of the page with the response
                document.body.innerHTML = xhr.responseText;
                tbls = document.getElementsByClassName("tables");
                for (var i = 0; i < tbls.length; i++) {
                    tbls[i].style.display = 'none';
                } 
                document.getElementById("hostel_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById('students_nav').addEventListener('click', function() {
        hostels = false
        students = true
        saveState('hostels', hostels)
        saveState('students', students)
        var url = '/toggle?students=' + students;
        // Send AJAX request to the server
        var xhr = new XMLHttpRequest();
        xhr.open('GET', url);
        xhr.onload = function() {
            if (xhr.status === 200) {
                // Update the content of the page with the response
                document.body.innerHTML = xhr.responseText;
                tbls = document.getElementsByClassName("tables");
                for (var i = 0; i < tbls.length; i++) {
                    tbls[i].style.display = 'none';
                } 
                document.getElementById("student_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById("filter_data").addEventListener('click', function () {
        var forms = document.getElementsByClassName("filter_forms");
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }
        if (hostels) {document.getElementById("hostels").style.display = 'block';}
        if (students) {document.getElementById("students").style.display = 'block';}
    });
    
    document.getElementById("delete_all").addEventListener('click', function () {
        var forms = document.getElementsByClassName("deletion_forms");
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }
        if (hostels) {document.getElementById("del_hostels").style.display = 'block';}
        if (students) {document.getElementById("del_students").style.display = 'block';}
    });
    
    document.getElementById("add_data").addEventListener('click', function () {
        var forms = document.getElementsByClassName("insertion_forms");
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }
        if (hostels) {document.getElementById("inserthostels").style.display = 'block';}
        if (students) {document.getElementById("insertstudents").style.display = 'block';}
     });
}

var hostels = false;
var students = false;
init();
