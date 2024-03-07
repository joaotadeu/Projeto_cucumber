require "cucumber"
require "capybara/cucumber"
require "site_prism"
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 5
end