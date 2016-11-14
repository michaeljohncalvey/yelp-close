

class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :blurb, presence: true
end
