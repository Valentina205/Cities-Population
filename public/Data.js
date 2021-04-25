var dataf = [];
var valCountry = "";
var valState = "";
var valCity = "";

var dataSelected = {
    country: valCountry,
    state: valState,
    city: valCity
};

// var countrySelected = {
//     country: valCountry
// };

// var stateSelected = {
//     state: valState
// };

$.post({
    url: "/country",
    data: {},
    contentType: "application/json",
    success: function (dataIn, status) {
        if (dataIn === "Not") {
            alert("ERROR");
        }
        else{
            datak = dataIn;
            //console.log(dataf); //<option value="1">1</option>
            $("#country").append('<option value="" selected disabled>Elegir</option>');
            for(j = 0; j < datak.length; j++) {
                /*if(dataf[i].var2 === null) {
                    dataf[i].var2 = "";
                }*/
                console.log(datak[j].country);
                $("#country").append('<option value="' + datak[j].id_country + '">' + datak[j].country + '</option>');
            }
            $("#country").append('<option value="All">Todos</option>');
        }
    }
});

document.getElementById("country").addEventListener("change", function() {
    dataSelected.country = document.Data.country.options[document.Data.country.selectedIndex].value;
    console.log(JSON.stringify(dataSelected.country)); 
    $.post({
        url: "/state",
        data: JSON.stringify(dataSelected),
        contentType: "application/json",
        success: function (dataIn, status) {
            if (dataIn === "Not") {
                console.log("SIN RESPUESTA DE /STATE");
                $("#state").append('<option value="All">Todos</option>');
            }
            else{
                datak = dataIn;
                //console.log(dataf); //<option value="1">1</option>
                $("#state").append('<option value="" selected disabled>Elegir</option>');
                for(k = 0; k < datak.length; k++) {
                    /*if(dataf[i].var2 === null) {
                        dataf[i].var2 = "";
                    }*/
                    console.log(datak[k].state);
                    $("#state").append('<option value="' + datak[k].id_state + '">' + datak[k].state + '</option>');
                }
                $("#state").append('<option value="All">Todos</option>');
            }
        }
    });
});

document.getElementById("state").addEventListener("change", function() {
    dataSelected.state = document.Data.state.options[document.Data.state.selectedIndex].value;
    console.log(JSON.stringify(dataSelected.state)); 
    $.post({
        url: "/city",
        data: JSON.stringify(dataSelected),
        contentType: "application/json",
        success: function (dataIn, status) {
            if (dataIn === "Not") {
                console.log("SIN RESPUESTA DE /CITY");
                $("#city").html('');
                alert("No hay información de esta ciudad")
            }
            else{
                datak = dataIn;
                //console.log(dataf); //<option value="1">1</option>
                $("#city").html('');
                $("#city").append('<option value="" selected disabled>Elegir</option>');
                for(f = 0; f < datak.length; f++) {
                    /*if(dataf[i].var2 === null) {
                        dataf[i].var2 = "";
                    }*/
                    console.log(datak[f].state);
                    $("#city").append('<option value="' + datak[f].ID_CITY + '">' + datak[f].NAME + '</option>');
                }
                $("#city").append('<option value="All">Todos</option>');
            }
        }
    });
});

document.getElementById("Buscar").addEventListener("click", function() {
    //Toma el dato seleccionado en la pag para buscar en la base de datos
    dataSelected.country = document.Data.country.options[document.Data.country.selectedIndex].value;
    dataSelected.state = document.Data.state.options[document.Data.state.selectedIndex].value;
    dataSelected.city = document.Data.city.options[document.Data.city.selectedIndex].value;

    if (dataSelected.state === "All") {

    }
    $.post({
        url: "/search",
        data: JSON.stringify(dataSelected),
        contentType: "application/json",
        success: function (dataIn, status) {
            if (dataIn === "Not") {
                alert("Debe seleccionar una opción adecuada en Fecha y ID Dispositivo");
            }
            else{
                dataf = dataIn;
                console.log(dataSelected);
                $("#Table").html("<tbody id='Table'> </tbody>");
                for(i = 0; i < dataf.length; i++) {
                    /*if(dataf[i].var2 === null) {
                        dataf[i].var2 = "";
                    }*/
                    $("#Table").append("<tr> <td>" + dataf[i].NAME + "</td> <td>" + dataf[i].POPULATION + "</td> </tr>");
                }
            }
        }
    });
});

$("#Eliminar").on("click", function() {
    $("#Table").html("<tbody id='Table'> </tbody>");
});