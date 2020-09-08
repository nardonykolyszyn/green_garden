# frozen_string_literal: true

# This is inspired in:
# Source (https://api.rubyonrails.org/classes/ActiveSupport/Testing/FileFixtures.html)
module FixturesLoader
  def load_fixture(fixture_name)
    path = Pathname.new(File.join(file_fixture_path, fixture_name))

    if path.exist?
      path
    else
      msg = "the directory '%s' does not contain a file named '%s'"
      raise ArgumentError, msg % [file_fixture_path, fixture_name]
    end
  end

  def file_fixture_path
    RSpec.configuration.file_fixture_path
  end
end
