Given('the login page is open successful') do
  
  $driver.get "http://the-internet.herokuapp.com/login"
end

When('users enter username {string} and password {string}') do |string, string2|
  $driver.find_element(:id, "username").send_keys(string)
  $driver.find_element(:id, "password").send_keys(string2)
  $driver.find_element(:css, "[class='fa fa-2x fa-sign-in']").click
end

Then('the message {string} should be displayed on the screen') do |string|
  warning_message = $driver.find_element(:css, "#flash").text
  expect(string).to include(string)
  
end