// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  $('#new_restaurant').submit(function(){

    // Check all the fields to make sure they're not empty
    any_field_empty = $("#restaurant_name").val() == "" ||
                      $("#restaurant_website").val() == "" ||
                      $("#restaurant_low_price").val() == "" ||
                      $("#restaurant_high_price").val() == "";

    //Only submit the form if no fields are empty.
    if(any_field_empty)
    {
      alert("You need to fill in all fields.");
      event.preventDefault();
    }
    
  });

  $('.notice').fadeOut(5000);

});