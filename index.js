console.log('Loading variable data');

console.log('Loading modules');
const http = require('http');
const {readFile, readFileSync} = require('fs');
const mysql = require('mysql');

console.log('Reading template files');
const htmlTemp = readFileSync('htmlTemplate.html', 'utf8');
const mainTemp = readFileSync('mainTemplate.js', 'utf8');
const classTemp = readFileSync('classTemplate.js', 'utf8');


function generateHTML(jsUrl, response) {
	response.statusCode = 200;
	response.end(htmlTemp.replace("$SCRIPT", jsUrl));
}

function fillMainTemplate(classes, response) {
	let classesObj = [];
	let classesRnd = [];
	
	for (let i = 0; i < classes.length; i++) {
		classesObj.push('"'+classes[i]['id']+'" : {"className" : "'+classes[i]['name']+'"}');
		classesRnd.push('/*#__PURE__*/React.createElement(ClassItem, {classID: "'+classes[i]['id']+'"})');
	}
	
	classesObj = '{'+classesObj.join(', ')+'}';
	classesRnd = '/*#__PURE__*/React.createElement("ul", null, \n'+classesRnd.join(',\n')+')';
	
	response.statusCode = 200;
	response.end(mainTemp.replace('$CLASSES_OBJECT', classesObj).replace('$CLASSES_RENDER', classesRnd));
}

function fillClassTemplate(students, response) {
	let studentsObj = [];
	let studentsRnd = [];
	
	for (let i = 0; i < students.length; i++) {
		studentsObj.push('"'+students[i]['id']+'" : {"studentName" : "'+students[i]['name']+'", "year" : "'+students[i]['year']+'", "major" : "'+students[i]['major']+'"}');
		studentsRnd.push('/*#__PURE__*/React.createElement(StudentItem, {studentID: "'+students[i]['id']+'"})');
	}
	studentsObj = '{'+studentsObj.join(', ')+'}';
	studentsRnd = '/*#__PURE__*/React.createElement("ul", null, \n'+studentsRnd.join(',\n')+')';
	
	response.statusCode = 200;
	response.end(classTemp.replace('$STUDENTS_OBJECT', studentsObj).replace('$STUDENTS_RENDER', studentsRnd));
}

function serverFunc(request, response) {
	const { headers, method, url } = request;
	let body = [];
	response.on('error', (err) => {
		console.error(err);
	});
	
	errorFlag = false;
	
	let outStr = "";
	
	if (request.url === '/') {
		try {
			outStr = generateHTML("/displayScript.js", response);
		} catch (error) {
			console.error(error);
			errorFlag = true;
		}
	} else if (request.url === '/displayScript.js') {
		con.query("SELECT id,name FROM classes", function (error, result, fields) {
			if (error) {
				response.statusCode = 400;
				response.end("error");
				console.error(error);
			} else {
				try {
					fillMainTemplate(result, response);
				} catch (error) {
					console.error(error);
					response.statusCode = 400;
					response.end("error");
				}
			}
		});
	} else if (request.url.length >= 17 && request.url.substr(0, 17) === '/displayClass?id=') {
		try {
			try {
				outStr = generateHTML("/displayScript.js?id="+request.url.substr(17), response);
			} catch {
				response.statusCode = 400;
				response.end("error");
			}
		} catch {
			errorFlag = true;
		}
	} else if (request.url.length >= 21 && request.url.substr(0, 21) === '/displayScript.js?id=') {
		con.query("SELECT students.id,students.name,students.year,students.major FROM sc_junction JOIN students ON sc_junction.student_id=students.id WHERE class_id=?", [parseInt(request.url.substr(21))], function (error, result, fields) {
			if (error) {
				console.error(error);
				response.statusCode = 400;
				response.end("error");
			} else {
				try {
					fillClassTemplate(result, response);
				} catch (error) {
					console.error(error);
					response.statusCode = 400;
					response.end("error");
				}
			}
		});
	} else {
		errorFlag = true;
	}
}

var con = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "password",
	database: "demodata"
});

console.log('Connecting to database')

con.connect(function(error) {
	if (error) {
		console.error(error);
		process.exit(1);
	}
	console.log('Initalizing server on port 8192')
	http.createServer(serverFunc).listen(8192);
	console.log('Program booted in '+require('process').uptime()+' seconds');
});
