class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :blurb, presence: true
  validates :postcode, presence: true

  geocoded_by :postcode
  after_validation :geocode
end
