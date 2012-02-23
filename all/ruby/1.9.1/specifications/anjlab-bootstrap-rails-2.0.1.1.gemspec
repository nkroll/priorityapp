# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "anjlab-bootstrap-rails"
  s.version = "2.0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yury Korolev"]
  s.date = "2012-02-19"
  s.description = "Twitter Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects"
  s.email = ["yury.korolev@gmail.com"]
  s.homepage = "https://github.com/anjlab/bootstrap-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.0"])
      s.add_runtime_dependency(%q<sass>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0"])
      s.add_development_dependency(%q<rails>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.0"])
      s.add_dependency(%q<sass>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1.0"])
      s.add_dependency(%q<rails>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.0"])
    s.add_dependency(%q<sass>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.0"])
    s.add_dependency(%q<rails>, [">= 3.1"])
  end
end
