# incandescent-rails-template

Incandescent Software Rails template.  Parts taken from by Greendog99 rails template https://github.com/greendog99/greendog-rails-template

## Features

* jquery-rails
* compass + html5-boilerplate
* devise
* jammit
* carrierwave 
* datamapper
* capybara
* cucumber

* no rspec
* no capistrano
* does not mess with your git workspace
* does not do anything with RVM

## Usage

Get a copy of the template:

`git clone git://github.com/incandescent/incandescent-rails-template.git /tmp/incandescent-rails-template`

Create a new Rails application as normal, specifying the path to the template script with the **-m** flag:

`rails new appname -m /tmp/greendog-rails-template/template.rb`

Create your database, run your db:automigrate to initialize db, and start the rails server with `rails s`.

## Credits

Thanks to Greendog99

* <https://github.com/greendog99/greendog-rails-template/>
