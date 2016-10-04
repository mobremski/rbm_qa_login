Given(/^I am a store manager with multiple locations$/) do
  create_user_with_single_location(
    'test_store_manager_multiple_loc',
    'test_store_manager_multiple_loc',
    'Store Manager',
    '147437',
    'Southeast',
    'Gulf States',
    'FL-Fort Walton Beach'
  )
  assign_location(
    @username,
    @password,
    '147638',
    'Southeast',
    'Gulf States',
    'FL-Fort Walton Beach'
  )
end

Then(/^I will see a list of my locations$/) do
  expect(page).to have_content(@location)
  expect(page).to have_content(@location2)
  expect(current_path).to match /\/locations$/
  click_link("Logoff #{@username}")
  destroy_user(@username)
end
