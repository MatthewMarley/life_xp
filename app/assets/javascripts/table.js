/* global $ */
$(document).on('turbolinks:load', function() {
    $('#dailyTable2').dataTable( {
        "order": [[0, "asc"]]
    }); 
});