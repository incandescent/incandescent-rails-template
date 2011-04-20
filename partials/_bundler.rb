puts 'Installing bundled gems (may take a while) ... '.magenta

# Install all other gems needed from Gemfile
run 'bundle install'

puts "\n"