class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :rating
  validates_inclusion_of :rating, :in => 1..5
end
