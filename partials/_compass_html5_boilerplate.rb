puts 'Installing Compass and generating HTML5 boilerplate ...'.magenta

run 'compass init rails -r html5-boilerplate -u html5-boilerplate --sass-dir app/stylesheets --css-dir public/stylesheets/compiled --force'

puts "\n"