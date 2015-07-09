# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

# Load any of our adapters and extensions early in the process
require 'rspec/rails/adapters'
require 'rspec/rails/extensions'

# Load the rspec-rails parts
require 'rspec/rails/view_rendering'
require 'rspec/rails/matchers'
#require 'rspec/rails/fixture_support'
require 'rspec/rails/example'
require 'rspec/rails/vendor/capybara'
# require 'rspec/rails/configuration'
# require 'rspec/rails/active_record'
# require 'rspec/rails/feature_check'

require 'rspec/autorun'
require 'capybara/rspec'
require 'factory_girl'
require 'devise'
require 'devise_remote_client'

# Requires supporting ruby files with custom matchers and macros, etc,
# in support/ and its subdirectories.
# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
# ActiveRecord::Migration.maintain_test_schema!
# FactoryGirl settings
FactoryGirl.find_definitions

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  # config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end