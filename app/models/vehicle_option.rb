class VehicleOption < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :option
end
