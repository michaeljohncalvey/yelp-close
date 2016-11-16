When(/^I go to the (.+) page$/) do |page|
  case page
  when "homepage"
    visit('/')
  when "restaurant"
    visit('/restaurants/view/1')
  when "new restaurant"
    visit('/restaurants/new')
  end
end
