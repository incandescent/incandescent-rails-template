#
# incandescent-rails-template
#
# Usage:
#   rails new appname -d mysql -m /path/to/template.rb
#
# Also see http://textmate.rubyforge.org/thor/Thor/Actions.html
#

# Check prerequisites
%w{colored bundler compass html5-boilerplate haml}.each do |component|
  unless Gem.available?(component)
    run "gem install #{component}"
    Gem.refresh
    Gem.activate(component)
  end
end

require 'rails'
require 'colored'
require 'bundler'
require 'haml'
require 'net/http'
require 'net/https'

# Copy a static file from the template into the new application
def copy_static_file(path)
  # puts "Installing #{path}...".magenta
  remove_file path
  file path, File.read(File.join(@static_files, path))
  # puts "\n"
end

# Directories for template partials and static files
@template_root = File.expand_path(File.join(File.dirname(__FILE__)))
@partials     = File.join(@template_root, 'partials')
@static_files = File.join(@template_root, 'files')

puts "\n========================================================="
puts " INCANDESCENT SOFTWARE RAILS 3 TEMPLATE".yellow.bold
puts "=========================================================\n"

copy_static_file 'Gemfile'
apply "#{@partials}/_gitignore.rb"
apply "#{@partials}/_bundler.rb"
apply "#{@partials}/_remove_samples.rb"
apply "#{@partials}/_jquery.rb"
apply "#{@partials}/_compass_html5_boilerplate.rb"
apply "#{@partials}/_rails_config.rb"
apply "#{@partials}/_devise.rb"
apply "#{@partials}/_copy_files.rb"

puts "\n========================================================="
puts " INSTALLATION COMPLETE!".yellow.bold
puts "=========================================================\n\n\n"