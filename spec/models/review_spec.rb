require 'rails_helper'

describe Review, type: :model do
  subject(:review) {Review.create(rating: 5, comment: "It's one of the best, the food is so fiery, the food is so great.") }

  describe 'record fields' do

    it 'has a rating' do
      expect(review.rating).to eq(5)
    end

    it 'has a comment' do
      expect(review.comment).to eq("It's one of the best, the food is so fiery, the food is so great.")
    end

  end

  describe 'validations' do

    it 'has to have a rating' do
      rev = Review.create(rating: nil, comment: 'best food')
      expect(rev).to_not be_valid
    end

    it "doesn't need a comment" do
      rev = Review.create(rating: 3)
      expect(rev).to be_valid
    end

    it "has a rating between 1 and 5" do
      rev = Review.create(rating: 6)
      expect(rev).to_not be_valid
      rev1 = Review.create(rating: 0)
      expect(rev1).to_not be_valid
    end
  end
end
