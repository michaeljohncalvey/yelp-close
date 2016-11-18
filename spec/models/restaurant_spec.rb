require 'rails_helper'


describe 'Restaurant' do

  subject(:restaurant) {Restaurant.create(name: "Felix's Firey Fish Fingers", description: "It's one of the best, the food is so fiery, the food is so great.", blurb: "An amazingly arduous amorphous adventure", postcode: "EH89ND") }

  describe 'record fields' do

    it 'has a name' do
      expect(restaurant.name).to eq("Felix's Firey Fish Fingers")
    end

    it 'has a description' do
      expect(restaurant.description).to eq("It's one of the best, the food is so fiery, the food is so great.")
    end

    it 'has a blurb' do
      expect(restaurant.blurb).to eq("An amazingly arduous amorphous adventure")
    end

    it "has a postcode" do
      expect(restaurant.postcode).to eq("EH89ND")
    end

  end

  describe 'validations' do

    it 'has to have a name' do
      res = Restaurant.create(name: nil, description: 'best food', blurb: 'amazing', postcode: "BH63NZ")
      expect(res).to_not be_valid
    end

    it 'has to have a description' do
      res = Restaurant.create(name: 'Felix\'s restaurant', description: nil, blurb: 'amazing', postcode: "BH63NZ")
      expect(res).to_not be_valid
    end

    it 'has to have some blurb' do
      res = Restaurant.create(name: 'Felix\'s restaurant', description: ' best food', blurb: nil, postcode: "BH63NZ")
      expect(res).to_not be_valid
    end

    it 'has to have a postcode' do
      res = Restaurant.create(name: 'Felix\'s restaurant', description: ' best food', blurb: "bla", postcode: nil)
      expect(res).to_not be_valid
    end

  end

  describe 'table relationships' do

    it 'has many reviews' do
      r = Restaurant.reflect_on_association(:reviews)
      expect(r.macro).to eq :has_many
    end

    it 'has a user' do
      r = Restaurant.reflect_on_association(:user)
      expect(r.macro).to eq :belongs_to
    end
  end

end
