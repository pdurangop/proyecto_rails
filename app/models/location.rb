class Location < ApplicationRecord
  validates :address, presence: true #, length: {maximun: 225}
  has_many :slots

  after_validation :geocode, if: -> (obj) { obj.address.present? && obj.address_changed? }
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
end
