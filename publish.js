var fs = require('fs');
var linq = require('./assets/js/linq.js').Enumerable;
//=========================================== UNDERSCODE
var _ = require('./assets/js/underscore.js');
_.templateSettings.evaluate = /\{\{([\s\S]+?)\}\}/g;
_.templateSettings.interpolate = /\{\{=([\s\S]+?)\}\}/g;
_.templateSettings.escape = /\{\{-([\s\S]+?)\}\}/g;
//======================================================

var exclude = {'assets': true, 'pt': true};

var $$ = {};

fs.readdirSync('.').forEach(function(item) {
	try {
	    var stats = fs.lstatSync(item);

	    if (stats.isDirectory()) {

    		if(!exclude[item]) {
	        	var tmpl = {};
				fs.readdirSync(item).forEach(function(file) {
					var name = file.substr(0, file.lastIndexOf('.'))
					fileContent = fs.readFileSync(item + '/' + file, 'binary');
					tmpl[name] = fileContent;
				});

				$$[item] = tmpl;
			}
	    }
	}
	catch (e) {
	}
});

fs.readdirSync('.').forEach(function(file) {
	var ext = file.substr(file.lastIndexOf('.'));

	if(ext != '.s')
		return;

	fileContent = fs.readFileSync(file, 'binary');
	var out = _.template(fileContent)($$);

	fs.writeFile('pt\\' + file.substr(0, file.lastIndexOf('.')) + '.html', out.toString('binary'), function(err) {
	    if(err) {
	        console.log(err);
	    }
	});

});

