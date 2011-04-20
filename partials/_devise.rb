# Set up devise

puts 'Setting up devise ... '.magenta

generate 'devise:install'
generate 'devise User'
generate 'devise:views'

puts "\n"