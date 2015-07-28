# This replaces app.rb and this is the correct way to accomplish
# it for full stack apps.  You can still use app.rb for small pages
class ApplicationController < Sinatra::Base

# require bundler
require 'bundler'
Bundler.require()

# connect to database
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'vader'
)

# include/set all ERB files in /views
set :views, File.expand_path('../../views', __FILE__)  #This includes two underscores + FILE + two more underscores

#404 errors
not_found do
  erb :not_found
end

end
