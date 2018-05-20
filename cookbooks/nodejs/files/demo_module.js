var http = require('http');
 var dt = require('./myfirstmodule');
//shift nodejs arguments into args 
var args = process.argv.slice(2);
var port = args[0];
var welcometxt = args[1];
 
 http.createServer(function (req, res) {
     res.writeHead(200, {'Content-Type': 'text/html'});
     res.write(welcometxt + dt.myDateTime());
     res.end();
 }).listen(port);
