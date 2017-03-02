var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);

app.get('/', function(req, res){
  res.sendfile('index.html');
});

//Whenever someone connects this gets executed
io.on('connection', function(socket){
  console.log('A user connected');
  //Send a message after a timeout of 4seconds
  socket.on('clientEvent', function(data){
    var amount = data.amount;
    var inCurrency = data.inCurrency;
    var outCurrency = data.outCurrency;
    var output = 1;

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
        if(inCurrency!=outCurrency){
          output = amount*fixerResponse.rates[outCurrency];
        }else {
          output = amount;
        }
        socket.emit('result',output);
      });
    }).on('error', function(e){
      console.log("Got an error: ", e);
    });
  });

  //Whenever someone disconnects this piece of code executed
  socket.on('disconnect', function () {
    console.log('A user disconnected');
  });
});


http.listen(3000, function(){
  console.log('listening on *:3000');
});
