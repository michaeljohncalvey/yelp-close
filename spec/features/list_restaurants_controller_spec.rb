require 'rails_helper'

RSpec.describe ListRestaurantsController, type: :feature do
  before :each do
    @restaurant1 = Restaurant.new(name: "Mike's restaurant", description: "An awesome seaside burger joint", blurb: "An awesome seaside burger joint")
    @restaurant2 = Restaurant.new(name: "Dio's awesome restaurant", description: "Awesome chinese takeaway", blurb: "An awesome chinese takeaway")
  end

  it "loads the list restaurants page" do
    visit '/restaurants/list'
    expect(page).to have_content "Mike's restaurant"
  end

end
