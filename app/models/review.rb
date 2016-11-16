class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :rating
  validates_inclusion_of :rating, :in => 1..5
  validates_presence_of :restaurant_id              
  validates :restaurant, presence: true
end
