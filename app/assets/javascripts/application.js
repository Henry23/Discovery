// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


function saludo()
{
  alert("Para mayor informacion sobre paquetes y servicios llamanos a nuestra oficinas Tel: +504-2785-18-67 Cel: +504-99-23-18-92/ +504-8737-3880");
}

function singIN(){
  return true
}

function HeaderController($scope, $location) 
{ 
    $scope.isActive = function (viewLocation) { 
        return viewLocation === $location.path();
    };
}

$('.carousel').carousel({
  interval: 2000
})

horarios()
{
  alert("Para mayor informacion sobre paquetes y servicios llamanos a nuestra oficinas Tel: +504-2785-18-67 Cel: +504-99-23-18-92/ +504-8737-3880");
}

function changeImage(button)
{

  button.style.backgroundImage = 'url("' + available_seat_img.gif + '")';
return false;
}

function myFunction()
{
document.getElementById("mybutton").image;
}