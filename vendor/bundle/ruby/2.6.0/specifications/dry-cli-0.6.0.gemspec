# -*- encoding: utf-8 -*-
# stub: dry-cli 0.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dry-cli".freeze
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "bug_tracker_uri" => "https://github.com/dry-rb/dry-cli/issues", "changelog_uri" => "https://github.com/dry-rb/dry-cli/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/dry-rb/dry-cli" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Luca Guidi".freeze]
  s.date = "2020-03-06"
  s.description = "Common framework to build command line interfaces with Ruby".freeze
  s.email = ["me@lucaguidi.com".freeze]
  s.homepage = "https://dry-rb.org/gems/dry-cli".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Common framework to build command line interfaces with Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.6", "< 3"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
  end
end
