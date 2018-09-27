# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "knife-winops/version"

Gem::Specification.new do |s|
  s.name        = "knife-winops"
  s.version     = Knife::Windows::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robbert-Jan Sperna Weiland"]
  s.email       = ["rspernaweiland@schubergphilis.com"]
  s.license     = "Apache-2.0"
  s.homepage    = "https://github.com/RobbertJanSW/knife-winops"
  s.summary     = %q{Plugin that adds functionality to Chef's Knife CLI for configuring/interacting with nodes running Microsoft Windows}
  s.description = s.summary

  s.required_ruby_version	= ">= 1.9.1"
  s.add_dependency "winrm", "~> 2.1"
  s.add_dependency "winrm-elevated", "~> 1.0"

  s.add_development_dependency 'pry'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
