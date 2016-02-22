gem_group :development, :test do
  gem 'rspec-rails', '~> 3.0' # testing framevork
  gem 'factory_girl_rails' # model mocking
end

gem_group :development do
  gem 'annotate' # generates info about migrations to models classes
  gem 'rdoc' # documentation 

  # Automation tools (run automatically when file is changed)
  gem 'guard-rake'
  gem 'guard-livereload'
  gem 'guard-rspec'
end

rakefile ('doc.rake') do
  <<-TASK
require 'rdoc/task'

Rake::RDocTask.new(:rdoc_dev) do |rd|
  rd.main = 'README.doc'
  rd.rdoc_files.include('README.rdoc', 'doc/doc_md/**/*')
  rd.rdoc_dir = 'doc/html'
end
  TASK
end