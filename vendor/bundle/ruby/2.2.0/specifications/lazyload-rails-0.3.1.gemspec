# -*- encoding: utf-8 -*-
# stub: lazyload-rails 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "lazyload-rails"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Javier Saldana"]
  s.date = "2014-11-17"
  s.description = "lazyload-rails project integrates jQuery Lazy Load Plugin for Rails image_tag helpers"
  s.email = "javier@tractical.com"
  s.homepage = "https://github.com/jassa/lazyload-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.7"
  s.summary = "jQuery Lazy Load for Rails image_tag helpers"

  s.installed_by_version = "2.4.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5"])
      s.add_development_dependency(%q<actionpack>, [">= 3.1"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.5"])
      s.add_dependency(%q<actionpack>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.5"])
    s.add_dependency(%q<actionpack>, [">= 3.1"])
  end
end
