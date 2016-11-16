When(/^I go to the homepage$/) do
  visit '/'
end

Given (/^a restaurant exists$/) do
  add_restaurant("Dio's Develish Doner Kebabs",
                          "Bluuuurb of Dio's Develish Kebabs",
                          "desc of doner kebabs",
                          "W7K2SD")
end

Then(/^I should see a (.*) element with ID "(.*)"$/) do |tag, id|
  element = find_by_id(id.to_s)
  element.assert_matches_selector(tag)
end

And (/^I click the (.*) button$/) do |btn|
  click_button "#{btn}"
end
