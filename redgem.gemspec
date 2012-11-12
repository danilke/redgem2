
Gem::Specification.new do |s|
  s.name = "redgem"
  s.version =  "0.6.2"

  s.platform    = Gem::Platform::RUBY
  s.authors = ["Eric Davis", "Kulakov Danila"]
  s.date = %q{2012-11-11}
  s.description = %q{A plugin to show and filter timelogs across all projects in Redmine.}
  s.email = %q{edavis@littlestreamsoftware.com, kdanilke@gmail.com}


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]
  s.homepage = %q{https://projects.littlestreamsoftware.com/projects/redmine-timesheet}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Timesheet plugin for Redmine to show timelogs for all projects}



  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"

end 