function isStateSaved(variableName) {
    return sessionStorage.getItem(variableName) !== null;
}

function saveState(variableName, value) {
    sessionStorage.setItem(variableName, JSON.stringify(value));
}

function loadState(variableName) {
    const value = sessionStorage.getItem(variableName);
    return value ? JSON.parse(value) : null;
}


function init() {

    if (isStateSaved('hostels')) {
        hostels = loadState('hostels')
        students = loadState('students')
        person_details = loadState('person_details')
        stay_rooms = loadState('stay_rooms')
        caretaker = loadState('caretaker')
        eateries_shops = loadState('eateries_shops')
        furniture_utils = loadState('furniture_utils')
        // hostels = loadState('hostels')
        housekeeper = loadState('housekeeper')
        // person_details = loadState('person_details')
        room_allocation = loadState('room_allocation')
        rooms = loadState('rooms')
        // stay_rooms = loadState('stay_rooms')
        store_common_rooms = loadState('store_common_rooms')
        // students = loadState('students')
    } else  {
        saveState('caretaker', caretaker)
        saveState('eateries_shops', eateries_shops)
        saveState('furniture_utils', furniture_utils)
        saveState('hostels', hostels)
        saveState('housekeeper', housekeeper)
        saveState('person_details', person_details)
        saveState('room_allocation', room_allocation)
        saveState('rooms', rooms)
        saveState('stay_rooms', stay_rooms)
        saveState('store_common_rooms', store_common_rooms)
        saveState('students', students)
    }

    if (hostels) {
        document.getElementById("hostel_table").style.display = 'block';
    }
    else if(students) {
        document.getElementById("student_table").style.display = 'block';
    }
    else if(person_details) {
        document.getElementById("person_details_table").style.display = 'block';
    } else if (stay_rooms) {
        document.getElementById("stay_rooms_table").style.display = 'block';
    }
    else if (caretaker) {
        document.getElementById("caretaker_table").style.display = 'block';
    }
    else if (eateries_shops) {
        document.getElementById("eateries_shops_table").style.display = 'block';
    }
    else if (furniture_utils) {
        document.getElementById("furniture_utils_table").style.display = 'block';
    }
    else if (housekeeper) {
        document.getElementById("housekeeper_table").style.display = 'block';
    }
    else if (room_allocation) {
        document.getElementById("room_allocation_table").style.display = 'block';
    }
    else if (rooms) {
        document.getElementById("rooms_table").style.display = 'block';
    }
    else if (store_common_rooms) {
        document.getElementById("store_common_rooms_table").style.display = 'block';
    }


    document.getElementById('hostels_nav').addEventListener('click', function() {
        hostels = true;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
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
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = true;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
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
                document.getElementById("students_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });    

    document.getElementById('person_details_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = true;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?person_details=' + person_details;
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
                document.getElementById("person_details_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });
    

    document.getElementById('caretaker_nav').addEventListener('click', function() {
        caretaker = true;
        eateries_shops = false;
        furniture_utils = false;
        hostels = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('hostels', hostels);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?caretaker=' + caretaker;
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
                document.getElementById("caretaker_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById('eateries_shops_nav').addEventListener('click', function() {
        caretaker = false;
        eateries_shops = true;
        furniture_utils = false;
        hostels = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('hostels', hostels);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?eateries_shops=' + eateries_shops;
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
                document.getElementById("eateries_shops").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });
    
    document.getElementById('furniture_utils_nav').addEventListener('click', function() {
        caretaker = false;
        eateries_shops = false;
        furniture_utils = true;
        hostels = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('hostels', hostels);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?caretaker=' + furniture_utils;
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
                document.getElementById("furniture_utils_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });
    
    document.getElementById('housekeeper_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = true;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?housekeeper=' + housekeeper;
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
                document.getElementById("housekeeper_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById('room_allocation_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = true;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?room_allocation=' + room_allocation;
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
                document.getElementById("room_allocation_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById('rooms_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = true;
        stay_rooms = false;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?rooms=' + rooms;
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
                document.getElementById("rooms_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });

    document.getElementById('store_common_rooms_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = false;
        store_common_rooms = true;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?store_common_rooms=' + store_common_rooms;
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
                document.getElementById("store_common_rooms_table").style.display = 'block';
                init();
            } else {
                // Handle error
                console.error('Request failed. Status: ' + xhr.status);
            }
        };
        xhr.send();
    });
    
    document.getElementById('stay_rooms_nav').addEventListener('click', function() {
        hostels = false;
        caretaker = false;
        eateries_shops = false;
        furniture_utils = false;
        housekeeper = false;
        person_details = false;
        room_allocation = false;
        rooms = false;
        stay_rooms = true;
        store_common_rooms = false;
        students = false;
        saveState('hostels', hostels);
        saveState('caretaker', caretaker);
        saveState('eateries_shops', eateries_shops);
        saveState('furniture_utils', furniture_utils);
        saveState('housekeeper', housekeeper);
        saveState('person_details', person_details);
        saveState('room_allocation', room_allocation);
        saveState('rooms', rooms);
        saveState('stay_rooms', stay_rooms);
        saveState('store_common_rooms', store_common_rooms);
        saveState('students', students);
        var url = '/toggle?stay_rooms=' + stay_rooms;
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
                document.getElementById("stay_rooms").style.display = 'block';
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
        if (caretaker) { document.getElementById("caretaker").style.display = 'block'; }
        if (eateries_shops) { document.getElementById("eateries_shops").style.display = 'block'; }
        if (furniture_utils) { document.getElementById("furniture_utils").style.display = 'block'; }
        if (hostels) { document.getElementById("hostels").style.display = 'block'; }
        if (housekeeper) { document.getElementById("housekeeper").style.display = 'block'; }
        if (person_details) { document.getElementById("person_details").style.display = 'block'; }
        if (room_allocation) { document.getElementById("room_allocation").style.display = 'block'; }
        if (rooms) { document.getElementById("rooms").style.display = 'block'; }
        if (stay_rooms) { document.getElementById("stay_rooms").style.display = 'block'; }
        if (store_common_rooms) { document.getElementById("store_common_rooms").style.display = 'block'; }
        if (students) { document.getElementById("students").style.display = 'block'; }

        
    });
    
    document.getElementById("delete_all").addEventListener('click', function () {
        var forms = document.getElementsByClassName("deletion_forms");
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }
        if (caretaker) { document.getElementById("del_caretaker").style.display = 'block'; }
        if (eateries_shops) { document.getElementById("del_eateries_shops").style.display = 'block'; }
        if (furniture_utils) { document.getElementById("del_furniture_utils").style.display = 'block'; }
        if (hostels) { document.getElementById("del_hostels").style.display = 'block'; }
        if (housekeeper) { document.getElementById("del_housekeeper").style.display = 'block'; }
        if (person_details) { document.getElementById("del_person_details").style.display = 'block'; }
        if (room_allocation) { document.getElementById("del_room_allocation").style.display = 'block'; }
        if (rooms) { document.getElementById("del_rooms").style.display = 'block'; }
        if (stay_rooms) { document.getElementById("del_stay_rooms").style.display = 'block'; }
        if (store_common_rooms) { document.getElementById("del_store_common_rooms").style.display = 'block'; }
        if (students) { document.getElementById("del_students").style.display = 'block'; }
    });
    
    document.getElementById("add_data").addEventListener('click', function () {
        var forms = document.getElementsByClassName("insertion_forms");
        for (var i = 0; i < forms.length; i++) {
            forms[i].style.display = 'none';
        }
        if (caretaker) { document.getElementById("insertcaretaker").style.display = 'block'; }
        if (eateries_shops) { document.getElementById("inserteateries_shops").style.display = 'block'; }
        if (furniture_utils) { document.getElementById("insertfurniture_utils").style.display = 'block'; }
        if (hostels) { document.getElementById("inserthostels").style.display = 'block'; }
        if (housekeeper) { document.getElementById("inserthousekeeper").style.display = 'block'; }
        if (person_details) { document.getElementById("insertperson_details").style.display = 'block'; }
        if (room_allocation) { document.getElementById("insertroom_allocation").style.display = 'block'; }
        if (rooms) { document.getElementById("insertrooms").style.display = 'block'; }
        if (stay_rooms) { document.getElementById("insertstay_rooms").style.display = 'block'; }
        if (store_common_rooms) { document.getElementById("insertstore_common_rooms").style.display = 'block'; }
        if (students) { document.getElementById("insertstudents").style.display = 'block'; }
     });
}

var caretaker = false;
var eateries_shops = false;
var furniture_utils = false;
var hostels = false;
var housekeeper = false;
var person_details = false;
var room_allocation = false;
var rooms = false;
var stay_rooms = false;
var store_common_rooms = false;
var students = false;

init();
