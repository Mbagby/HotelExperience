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
//= require private_pub
//= require dataTables/jquery.dataTables
//= require turbolinks
//= require_tree .


// Loads all Semantic javascripts
//= require semantic-ui
//= require moment
//= require jquery-ui/datepicker
//= require jquery-star-rating
//= require bootstrap-datetimepicker

$(window).load(function(){

    $('.ui.basic.modal')
  .modal('show')
;
$("#profileButton").click(function(){
    $('.ui.modal').modal('show');
})
});


$(document).on('page:load', function() {



$('.stars').rating();

$('#tableSize').DataTable();


$(function() {
  $('#datepicker').datepicker();
});

$('.ui.dropdown')
  .dropdown()
;



$(function () {
        $('#datetimepicker6').datetimepicker({useCurrent: true});
        $('#datetimepicker7').datetimepicker({
            useCurrent: false
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });

});
