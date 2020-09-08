# frozen_string_literal: true

require 'oj'

# This modules provides a fast and non-disruptive way to load heavy JSON files
# Oj helps to carry on with this task by providing an optimized parsing and marshalling interface
module GreenGarden
  module Loader
    def load_json(file_path, read_mode = 'r')
      File.open(file_path, read_mode) { |f| Oj.load(f.read) }
    end
  end
end
