Given('login successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.resize_to(886, 778)
  end
  
  When('users enter valid <username> and <password>') do
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('tomsmith')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('SuperSecretPassword!')
    @driver.find_element(:id, 'password').send_keys(:enter)
  end
  
  Then('{string} result should be listed on page title') do |string|
    expect(@driver.find_element(:id, 'flash').text).to include('You logged into a secure area!')
    @driver.close
  end

  Given('login unsuccessfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.resize_to(886, 778)
  end
  
  When('user enter invalid username {string}') do |string|
    @username = string 
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys(@username)
  end
  
  When('and password {string}') do |string|
    @password = string 
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys(@password)
    @driver.find_element(:id, 'password').send_keys(:enter)
  end
  
  Then('{string} result should be appeared on the screen') do |string|
    expect(@driver.find_element(:id, 'flash').text).to include(string)
    @driver.close
  end