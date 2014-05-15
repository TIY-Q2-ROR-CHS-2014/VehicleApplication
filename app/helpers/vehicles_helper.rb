module VehiclesHelper
  def display_availability(vehicle)
    if vehicle.workflow_state == 'new'
      'Available'
    else
      'Sold'
    end
  end

  def  availability_class(vehicle)
    if vehicle.workflow_state == 'new'
      'success'
    else
      'warning'
    end
  end
end
