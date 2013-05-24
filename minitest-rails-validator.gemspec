Gem::Specification.new do |s|
  s.name        = 'minitest-rails-validator'
  s.version     = '0.0.1'
  s.summary     = "Generates test cases for rails"
  s.description = "Dynamically Generates test cases for rails validations"
  s.authors     = ["Siva Gollapalli"]
  s.email       = 'sivagollapalli@yahoo.com'

  s.add_dependency(%q<minitest-rails>, ["~> 0.3"])
  s.add_dependency(%q<mongoid-minitest>, ["~> 1.0.0"])
end
