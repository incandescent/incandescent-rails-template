puts 'Removing unnecessary files ... '.magenta
remove_file 'README'

# remove application layout
remove_file 'app/views/layouts/application.html.erb'

# remove public files
inside 'public' do
  remove_file 'index.html'
  remove_file 'favicon.ico'
  remove_file 'robots.txt'
  remove_file 'index.html'
  remove_file 'images/rails.png'
end

puts "\n"