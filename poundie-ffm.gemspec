# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{poundie-ffm}
  s.version = "0.0.5"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Michael "Bad Dog" Haddad}]
  s.date = %q{2011-05-18}
  s.files = ["lib/poundie-ffm.rb"]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.0}
  s.summary = %q{A Poundie plugin for discovering the antipodal restaurant for the provided location.}
  s.description = "A Poundie plugin for discovering the antipodal restaurant for the provided location."
  s.add_dependency("poundie", [">= 0.0.3"])
end