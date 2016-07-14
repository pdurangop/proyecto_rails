class ParkRecord < ApplicationRecord
  belongs_to :vehicle
  belongs_to :slot
end
