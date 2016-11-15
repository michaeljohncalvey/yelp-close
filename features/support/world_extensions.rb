module RestaurantWorld
  def add_restaurant
    Restaurant.create(name: "Felix's Firey Fish Fingers",
                      description: "It's one of the best, the food is so fiery, the food is so great.",
                      blurb: "An amazingly arduous amorphous adventure",
                      postcode: "EH89ND")
  end

  def fill_in_restaurant_form
    fill_in("restaurant[name]", with: "Felix's Firey Fish Fingers")
    fill_in("restaurant[description]", with: "It's one of the best, the food is so fiery, the food is so great.")
    fill_in("restaurant[blurb]", with: "An amazingly arduous amorphous adventure")
    fill_in("restaurant[postcode]", with: "EH89ND")
  end

  def see_restaurant_details
    expect(page).to have_content("Felix's Firey Fish Fingers")
    expect(page).to have_content("It's one of the best, the food is so fiery, the food is so great.")
    expect(page).to have_content("An amazingly arduous amorphous adventure")
    expect(page).to have_content("EH89ND")
  end
end

World(RestaurantWorld)
