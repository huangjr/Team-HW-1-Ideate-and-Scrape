$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'version'

Gem::Specification.new do |s|
  s.name        =  'codeschool'
  s.version     =  CodeSchool::VERSION
  s.date        =  CodeSchool::DATE
  s.executables << 'codeschool'
  s.summary     =  'Access teacher and course information on CodeSchool'
  s.description =  'show course and teacher on codeschool'
  s.authors     =  ['stozuka', 'stonegold546','huangjr','pengyuchen']
  s.email       =  ['stozuka@gmail.com','stozuka@gmail.com','jr@nlplab.cc', 'pengyu@gmail.com']
  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files spec/*`.split("\n")
  s.homepage    =  'https://github.com/SOAupstart2/Team-HW-1-Ideate-and-Scrape'
  s.license     =  'MIT'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-rg'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'
  s.add_runtime_dependency 'nokogiri'
end
