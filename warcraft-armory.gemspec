Gem::Specification.new do |s|
  s.name = %q{warcraft_armory}
  s.version = "1.0.0"
 
  s.specification_version = 2 if s.respond_to? :specification_version=
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  
  s.authors = ["Ariejan de Vroom"]
  s.homepage = %q{http://ariejan.net}
  s.date = %q{2008-08-14}
  s.description = %q{Retrieve character information from the World of Warcraft Armory}
  s.email = %q{ariejan@ariejan.net}
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["Changelog", "LICENSE", "Rakefile", "README.textile", "lib/warcraft_armory.rb", "test/warcraft_armory_test.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{Retrieve character information from the World of Warcraft Armory}
  s.test_files = ["test/warcraft_armory_test.rb"]
  
  s.add_dependency(%q<hpricot>, [">= 0.6"])
end
