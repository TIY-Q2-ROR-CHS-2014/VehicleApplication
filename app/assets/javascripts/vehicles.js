var load_vehicle_javascript = function(){
  $(document.body).on("change", "select", function(){ 
    console.log( $(this).val() );
    console.log("Rich is PARTICIPATING!!!");
    $.ajax({
      type: "PATCH",
      dataType: "script",
      url: $(this).attr('update_url'),
      data: {vehicle: {workflow_state: $(this).val()}}
    })
  });
}

$(document).ready(load_vehicle_javascript);
$(document).on("page:load", load_vehicle_javascript);
