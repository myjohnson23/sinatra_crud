require 'sinatra/base' #fallback in case bundler hasn't loaded yet

# loading all controllers + models
Dir.glob('./{controllers,models}/*.rb').each {
  |file| require file
}

map('/students') { run StudentsController }
