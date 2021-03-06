ENV['RACK_ENV'] = 'test'
require 'coveralls'
Coveralls.wear!
require_relative '../config/environment'
require 'simple_oauth'

RSpec.shared_context 'spec_helper', shared_context: :metadata do
  RSpec.configure do |config|
    config.include Rack::Test::Methods

    DatabaseCleaner.strategy = :truncation
    config.before(:each) do
      DatabaseCleaner.clean
    end
  end
end
