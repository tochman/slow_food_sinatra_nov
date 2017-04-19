ENV['RACK_ENV'] = 'test'

require './lib/controller.rb'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'pry'
require 'database_cleaner'
require 'database_cleaner/cucumber'

Capybara.app = SlowFood



class SlowFoodWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

DatabaseCleaner.strategy = :truncation

Around do |_scenario, block|
  DatabaseCleaner.cleaning(&block)
end

Warden.test_mode!
World do
  SlowFood.new
  Warden::Test::Helpers
end
After { Warden.test_reset! }
