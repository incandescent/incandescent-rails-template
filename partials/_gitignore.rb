puts 'Creating .gitignore ...'.magenta

remove_file '.gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')
  .bundle
  db/*.sqlite3
  log/*.log
  tmp/
  .DS_Store
  coverage
  rdoc
  public/stylesheets/compiled/*
  public/system/*
CODE

puts "\n"