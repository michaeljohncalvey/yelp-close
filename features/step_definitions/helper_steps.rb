When(/^I go to the (.+)page$/) do |page|
  case page
  when "home"
    visit('/')
  when "restaurant "
    visit('/restaurants/1')
  when "new restaurant "
    visit('/restaurants/new')
  else
    raise "Page doesn't match predefined page names"
  end
end


Given (/^I am signed up$/) do
  visit('/users/sign_up')
  user_sign_up("mjcalvey2@gmail.com", "Password123")
  find('[name=commit]').click
end

Given (/^I am signed in$/) do
  visit('/user/sign_in')
  user_sign_in("mjcalvey2@gmail.com", "Password123")
  find('[name=commit]').click
end

Given (/^([0-9]+) restaurant(s)? exist(s)?$/) do |num_times, i, j|
  num_times.to_i.times {add_restaurant("Dio's Develish Doner Kebabs #{num_times}",
                          "Bluuuurb of Dio's Develish Kebabs",
                          "desc of doner kebabs",
                          "W1K2SE")}
end

Then(/^I should see a (.*) element with ID "(.*)"$/) do |tag, id|
  element = find_by_id(id.to_s)
  element.assert_matches_selector(tag)
end

And (/^I click the (.*) button$/) do |btn|
  click_button "#{btn}"
end
