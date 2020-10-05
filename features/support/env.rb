require 'Selenium-Webdriver'
require 'Webdrivers'

$driver = Selenium::WebDriver.for :chrome

at_exit do
    $driver.quit
end