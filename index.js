//Express
const express = require("express");
const app = express();

app.use(express.json());
app.use(express.static("public"));
//mySQL
var mysql = require('mysql');
 //Info de la base de datos en MySQL
var con = mysql.createConnection({
  host: "localhost",
  user: "valentina",
  password: "0420",
  database: "info" //Nombre base de datos
});

//Para conectarse a la base de datos
con.connect(function(err) {
  if (err) throw err;
  console.log("Connected...");
});

//Pag principal e inicial
app.get("/", function(request, response){
    response.status(200);
    response.sendFile(__dirname + "/public/Data.html");
  });





    //Busca en la base de datos según se esté solicitando
app.post("/country", function (request, response) {
    //var dataser = {};
    //Así se selleciona TODO lo de la base de datos
    con.query("SELECT * FROM info.countries", function (err, result, fields) {
    var dataser = result;
    console.log(dataser);
    if (dataser.length > 0) {
        response.send(dataser); 
    } else {
        response.send("Not");
    }
    });
  });

  app.post("/state", function (request, response) {
    //var dataser = {};
    let datacountry = request.body;
    //Así se selleciona TODO lo de la base de datos
    if(datacountry.country !== "All"){
      con.query('SELECT * FROM info.states WHERE id_country = ?', [datacountry.country], function (err, result, fields) {
      var dataser = result;
      console.log(dataser);
      if (dataser.length > 0) {
          response.send(dataser); 
      } else {
          response.send("Not");
      }
      });
    }
  });

  app.post("/city", function (request, response) {
    //var dataser = {};
    let datastate = request.body;
    //Así se selleciona TODO lo de la base de datos
    if(datastate.state !== "All"){
      con.query('SELECT * FROM info.cities WHERE ID_STATE = ?', [parseInt(datastate.state,10)], function (err, result, fields) {
      var dataser = result;
      console.log(dataser);
      if (dataser.length > 0) {
          response.send(dataser); 
      } else {
          response.send("Not");
      }
      });
    }
  });


  //Busca en la base de datos según se esté solicitando
app.post("/search", function (request, response) {
    let data2 = request.body;
    var dataser = {};
    console.log(data2);
    if (data2.country && data2.state && data2.city) {
      //OPCION TODOS LOS PAISES
        if(data2.country === "All" && data2.state === "All"){
          //Así se selleciona TODO lo de la base de datos
          con.query("SELECT * FROM info.cities", function (err, result, fields) {
            var dataser = result;
            console.log(dataser);
            if (dataser.length > 0) {
              response.send(dataser); 
            } else {
              response.send("Not");
            }
          });
        }
        //OPCION CIUDAD EN ESPECÍFICO
        else if(data2.country !== "All" && data2.state !== "All" && data2.city !== "All"){
          //Aquí busca fecha Y ID específico
          con.query('SELECT * FROM info.cities WHERE ID_CITY = ?', [parseInt(data2.city,10)], function (error, result, fields) {
            var dataser = result;
            console.log(dataser);
            if (dataser.length > 0) {
              response.send(dataser); 
            } else {
              response.send("Not");
            }
          });
        }
        //OPCION TODAS LAS CIUDADES
        else if (data2.country !== "All" && data2.state !== "All" && data2.city === "All") {
          con.query('SELECT * FROM info.cities WHERE ID_STATE = ?', [data2.state], function (error, result, fields) {
            var dataser = result;
            console.log(dataser);
            if (dataser.length > 0) {
              response.send(dataser); 
            } else {
              response.send("Not");
            }
          });
        }
        //OPCION TODOS LOS ESTADOS
        
        else if (data2.country !== "All" && data2.state === "All" && data2.city === "All") {
          
          con.query('SELECT * FROM info.states WHERE id_country = ?', [data2.country], function (error, result, fields) {
            var dataser = result;
            console.log(dataser);
            var alldata = [];
      
            if (dataser.length > 0) {
              console.log("__________" + dataser.length + "____________");
              for (var x = 0; x < dataser.length; x++) {
                con.query('SELECT * FROM info.cities WHERE ID_STATE = ?', [dataser[x].id_state], function (error, result, fields) {
                  var datafinal = result;
                  //console.log("++++++++++++++" + datafinal.length + "++++++++++++++");
                  for (var q = 0; q < datafinal.length; q++) {
                    //console.log('>> results: ', result[q] );
                    let string = JSON.stringify(datafinal[q]);
                    //console.log('>> string: ', string );
                    let json =  JSON.parse(string);
                    //console.log('>> json: ', json);
                    //console.log('>> user.name: ', json[0].name);
                    //req.list = json;
                    alldata.push(string);
                    //console.log(json);
                  }
                  //console.log(result);
                });
                
              }
              console.log(alldata);
              response.send(alldata); 
            } else {
              response.send("Not");
            }
          });
        }
       
    } else {
      response.send("Not2");
    }
  
  });




  //Este siempre va igual también
app.listen(3000, function(){
    console.log("Servidor iniciado ");
  });