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

function successPostion(position){
  var data = position.coords;
  var lat = data.latitude;
  var lng = data.longitude;
  document.getElementById("lat").innerHTML = lat;
  document.getElementById("lng").innerHTML = lng;
  }

  function errorPostion(position){
  alert("false");
  }

  function geolocationSetting(position){
    enableHighAccuracy = true;
  }


function geoget(){
  var message = "取得開始";
  alert(message);
  console.log("js起動");
if (navigator.geolocation) {
alert("取得完了");
  navigator.geolocation.getCurrentPosition(successPostion,errorPostion,geolocationSetting);
    }else{
      alert("端末未対応");
    }
}

function test(){
  alert("テスト開始");
  console.log("起動");
  target = document.getElementById("output");
  target.innerHTML ="成功！";

}
