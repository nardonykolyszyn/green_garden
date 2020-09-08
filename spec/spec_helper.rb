# frozen_string_literal: true

require 'bundler/setup'
require 'green_garden'
require 'rspec/collection_matchers'
require 'rspec/expectations'
require 'rspec/json_expectations'


# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.expand_path('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include FixturesLoader
  config.add_setting :file_fixture_path, default: 'spec/fixtures'
end
