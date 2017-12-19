// Builds the HTML Table out of myList.
function buildTableUsers(selector, myList) {

    try {
        var columns = addAllColumnHeaders(myList, selector);
        for (var i = 0; i < myList.length; i++) {
            var row$ = $('<tr/>');
            var fullname = myList[i][columns[0]];
            for (var colIndex = 0; colIndex < columns.length; colIndex++) {
                var cellValue = myList[i][columns[colIndex]];
                if (cellValue == null) cellValue = "";
                row$.append($('<td/>').html(cellValue));
            }
            row$.append($('<td/>').html(buildLink(fullname)));
            $(selector).append(row$);
        }
    }catch(e){
        console.log('error: empty request!');
    }
}

function buildTable(selector, myList) {

    try {
        var columns = addAllColumnHeaders(myList, selector);
        for (var i = 0; i < myList.length; i++) {
            var row$ = $('<tr/>');
            //var fullname = myList[i][columns[0]];
            for (var colIndex = 0; colIndex < columns.length; colIndex++) {
                var cellValue = myList[i][columns[colIndex]];
                if (cellValue == null) cellValue = "";
                row$.append($('<td/>').html(cellValue));
            }
            //row$.append($('<td/>').html(buildLink(fullname)));
            $(selector).append(row$);
        }
    }catch(e){
        console.log('error: empty request!');
    }
}

function buildLink(fullname){
    var line = '<a class="btn btn-lg btn-primary" href="/showProfile/';
    console.log(line);
    line = line + fullname;
    console.log(line);
    line = line + '" role="button">+</a>';
    console.log(line);
    return line;
}

function loadProfile(){
    getUsername();
    var h = window.location.pathname.split('/');
    var u = h[h.length - 1];
    $.ajax({
				url: '/getProfile/'+u,
				data: $('form').serialize(),
				type: 'POST',
				success: function(response) {
                    j = JSON.parse(response);
                    var fullname = j[0][0];
                    var pos = j[0][1];
                    var prod = j[0][2];
                    var dept = j[0][3];
                    document.getElementById("fullname").innerHTML="<b>Full Name: </b>"+fullname;
                    document.getElementById("position").innerHTML="<b>Position: </b>"+pos;
                    document.getElementById("product").innerHTML="<b>Product: </b>"+prod;
                    document.getElementById("department").innerHTML="<b>Department: </b>"+dept;
				},
				error: function(error) {
					console.log(error);
				}
			});
}

// Adds a header row to the table and returns the set of columns.
// Need to do union of keys from all records as some records may not contain
// all records.
function addAllColumnHeaders(myList, selector) {
    var columnSet = [];
    var headerTr$ = $('<tr/>');

    for (var i = 0; i < myList.length; i++) {
        var rowHash = myList[i];
        for (var key in rowHash) {
            if ($.inArray(key, columnSet) == -1) {
                columnSet.push(key);
                //headerTr$.append($('<th/>').html(key));
            }
        }
    }
    $(selector).append(headerTr$);

    return columnSet;
}

function getUsername(){
    $.ajax({
        url: '/getUsername',
        type: 'POST',
        datatype: 'text',
        success: function(response) {
            document.getElementById("cur_user").innerHTML="<h3 class=\"text-muted\">current user: "+response.toString()+"</h3>";
        },
        error: function(error) {
            console.log(error);
        }
    })
}

    $(function() {
    $('#btnLogOut').click(function() {
        $.ajax({
            url: '/logOut',
            type: 'POST',
            success: function(response) {
                location.reload();
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
});


function getUsers() {
    console.log('kek');
    getUsername();
	
    $.ajax({
			url: '/getUsers',
				data: $('form').serialize(),
				type: 'POST',
				success: function(response) {
				    $('#users').empty();
                    //buildTable('#users',JSON.parse('{"response": [["<b>Username</b>", "<b>Open Profile</b>"]]}').response);
					buildTableUsers('#users',JSON.parse(response).response);
					console.log(response);
				},
				error: function(error) {
					console.log(error);
				}
			});
    
    $.ajax({
			url: '/getProducts',
				data: $('form').serialize(),
				type: 'POST',
				success: function(response) {
				    $('#products').empty();
                    //buildTable('#products',JSON.parse('{"response": [["<b>productname</b>", "<b>%</b>"]]}').response);
					buildTable('#products',JSON.parse(response).response);
					console.log(response);
				},
				error: function(error) {
					console.log(error);
				}
			});
    
    $.ajax({
			url: '/getLines',
				data: $('form').serialize(),
				type: 'POST',
				success: function(response) {
				    $('#lines').empty();
                    //buildTable('#lines',JSON.parse('{"response": [["<b>productlinename</b>"]]}').response);
					buildTable('#lines',JSON.parse(response).response);
					console.log(response);
				},
				error: function(error) {
					console.log(error);
				}
			});
		}
  