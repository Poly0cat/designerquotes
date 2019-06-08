require "date"

Gem::Specification.new do |s|
  s.name        = 'design-quotes'
  s.version     = '0.0.2'
  s.files       = ["lib/design-quotes.rb"]
  s.summary     = "Quotes on design."
  s.authors     = ["Alisher Zakir"]


  s.description = "This gem prints out random quotes that will make you design better."
  s.email       = 'poly0cat@gmail.com'
  s.homepage    = 'https://rubygems.org/gems/design-quotes'
  s.metadata    = { "source_code_uri" => "https://github.com/example/example" }
  s.licenses    = ['MIT']
  s.requirements << "rest-client"
  s.requirements << "htmlentities"
  s.date        = Date.today.strftime("%Y-%m-%d")
  s.executables << "design-quotes"
end
