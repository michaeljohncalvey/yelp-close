class Review < ActiveRecord::Base
  validates_presence_of :rating
  validates_inclusion_of :rating, :in => 1..5
end
