class Option < ActiveRecord::Base
  has_many :vehicle_options
  has_many :vehicles, through: :vehicle_options

  OPTION_TYPES = [
    "Tires",
    "Transmission",
    "Monitors",
    "Rims",
    "Audio",
    "Tint",
    "Neon Lights",
    "Wing Size",
    "Turbo Power",
    "NOS",
    "Lift Kit",
    "Flux Capacitor",
    "Hydraulics"
  ]
end
