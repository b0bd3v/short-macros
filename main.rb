require 'selenium-webdriver'
require 'dotenv/load'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to ENV['FAQ_URL']

element = driver.find_element(name: 'q')
element.send_keys 'Hello WebDriver!'
element.submit

puts driver.title

driver.quit