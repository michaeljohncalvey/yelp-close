class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :blurb, presence: true
  validates :postcode, presence: true
  validates :user_id, presence: true

  geocoded_by :postcode
  after_validation :geocode
end
