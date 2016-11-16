class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true
  validates :description, presence: true
  validates :blurb, presence: true
  validates :postcode, presence: true
end
