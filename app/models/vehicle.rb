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

  AVAILABLE_STATES = [
    ["Sell", "sold"],
    ["Buy", "new"]
  ]

  scope :search_vehicles, -> search { where( "vehicle_model like ? OR make like ? OR year like ? OR color like ? OR cost like ? OR year like ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%" ) }

  include Workflow
  workflow do
    state :new do
      event :sell_car, transitions_to: :sold
    end

    state :sold do
      event :buy_car, transitions_to: :new
    end
  end
end
