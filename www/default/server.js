var http = require('http')
  , sys  = require('sys')
  , express = require('express')
  , routes = require('./routes');


var header = {
	"Content-Type": "text/html"
};

app.configure(function(){
  app.set('views', __dirname + '/views');
  app.set('view engine', 'jade');
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(express.compiler({ src : __dirname + '/public', enable: ['less']}));
  app.use(app.router);
  app.use(express.static(__dirname + '/public'));
});

// Handle incoming requests
var app = http.createServer( function( request, response ) {
	sys.puts("Incoming request! Woo!");
	response.writeHeader(200, header);
	response.write("<h2>Hello, nerds!</h2>");
	response.end();
});

// Listen for incoming requests on port 80
app.listen(80);

