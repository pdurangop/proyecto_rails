class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :parkrecords
  has_many :slots, through: :parkrecords
end
