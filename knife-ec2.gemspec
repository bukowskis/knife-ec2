# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "knife-ec2/version"

Gem::Specification.new do |s|
  s.name         = "knife-ec2"
  s.version      = Knife::Ec2::VERSION
  s.authors      = ["Adam Jacob", "Seth Chisamore"]
  s.email        = ["adam@chef.io", "schisamo@chef.io"]
  s.homepage     = "https://github.com/chef/knife-ec2"
  s.summary      = "Amazon EC2 Support for Chef's Knife Command"
  s.description  = s.summary
  s.license      = "Apache-2.0"

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files spec/*`.split("\n")
  s.required_ruby_version = ">= 2.3"

  s.add_dependency "aws-sdk", "~> 2.0"
  s.add_dependency "knife-windows", "~> 1.0"

  s.require_paths = ["lib"]
end
