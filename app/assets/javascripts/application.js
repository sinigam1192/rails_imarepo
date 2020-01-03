// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require moment
//= require moment/ja.js
//= require tempusdominus-bootstrap-4.js


function successPostion(position){
  var data = position.coords;
   lat = data.latitude;
   lng = data.longitude;
  //document.getElementById("lat").innerHTML = lat;
  //document.getElementById("lng").innerHTML = lng;

  }

  function errorPostion(position){
  alert("false");
  }

  function geolocationSetting(position){
    enableHighAccuracy = true;
  }


function getgeolocation(){
  var message = "取得開始";
  alert("geo1");
  console.log("js起動");
  if (navigator.geolocation) {
    alert("geo2");
    navigator.geolocation.getCurrentPosition(successPostion,errorPostion,geolocationSetting);
    return {lat, lng};

    }else{
      alert("端末未対応");
    }

}

$(function geoget(){

  $("#getgeolocation").click(function(){
  var id = document.getElementById("id");
  alert(id);
    alert("１");
    var position = getgeolocation();
    alert(position.lat);
    $.ajax({
      url: "/work/:id/getgeolocation",
      type: "GET",
      datatype: "html",
      data: {
        lat: position.lat,
        lng: position.lng,

      },
      timeout: 10,
      //success: function(data){
        //成功の処理
        //alert("成功");

        //alert(lat);
      //},
      //error: function(data){
        //失敗の処理
      //  alert("失敗");
      //}

    });

    });
  });
//});
