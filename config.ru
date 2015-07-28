require 'sinatra/base' #fallback in case bundler hasn't loaded yet

# loading all controllers + models
Dir.glob('./{controllers,models}/*.rb').each {
  |file| require file
}

#localhost:9292/
map('/') { run HomeController }
#localhost:9292/students
map('/students') { run StudentsController }
