class Vehicle < ActiveRecord::Base
  has_many :vehicle_options
  has_many :options, through: :vehicle_options

  MAKE = [
    "Toyota",
    "Lotus",
    "Blotus",
    "Billy Bob Truck",
    "Delorean",
    "Datsun",
    "Batmobile",
    "Ferrari",
    "Honda"
  ]
end
