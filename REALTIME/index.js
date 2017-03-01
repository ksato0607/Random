var amount = 0;
var inCurrency, outCurrency = "";

//Initialize parameters with arguments
process.argv.slice(2).forEach(function (val, index, array) {
  switch(index){
    case 0: break;
    case 1: amount = val; break;
    case 2: inCurrency = val; break;
    case 3: outCurrency = val; break;
    default: console.log("Too many arguments"); break;
  }
});

//Access to JSON API
var http = require('http');
var url = 'http://api.fixer.io/latest?base=' + inCurrency;
http.get(url, function(res){
    var body = '';

    res.on('data', function(chunk){
        body += chunk;
    });

    res.on('end', function(){
        var fixerResponse = JSON.parse(body);
        var output = amount*fixerResponse.rates[outCurrency];
        console.log(amount +" " + inCurrency + " = " + output + " "+ outCurrency);
    });
}).on('error', function(e){
      console.log("Got an error: ", e);
});


var io = require('socket.io').listen(8080); // initiate socket.io server

io.sockets.on('connection', function (socket) {
  socket.emit('news', { hello: 'world' }); // Send data to client

  // wait for the event raised by the client
  socket.on('my other event', function (data) {
    console.log(data);
  });
});
