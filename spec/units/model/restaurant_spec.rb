require 'spec_helper'


describe 'Restaurant' do

  subject(:restaurant) {Restaurant.create(name: "Felix's Firey Fish Fingers", description: "It's one of the best, the food is so fiery, the food is so great.", blurb: "An amazingly arduous amorphous adventure") }

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

  end
end
