# frozen_string_literal: true

require_relative 'lib/green_garden/version'

Gem::Specification.new do |spec|
  spec.name          = 'green_garden'
  spec.version       = GreenGarden::VERSION
  spec.authors       = %w[Nardo\ Nykolyszyn]
  spec.email         = %w[nardonykolyszyn@gmail.com]

  spec.summary       = 'The definitive gem to handle Trees in Ruby'
  spec.description   = 'Green Garden is the definitive Ruby gem to handle common Trees operations by using fancy code argued on Tree Traversal theorem.'
  spec.homepage      = 'https://github.com/nardonykolyszyn/green_garden.git'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/nardonykolyszyn/green_garden.git'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = %w[lib]

  ## Dependencies

  # Development
  spec.add_development_dependency 'pry', '~> 0.13.1'

  # Production
  spec.add_dependency 'dry-cli', '~> 0.6.0'
  spec.add_dependency 'oj', '~> 3.10'
end
