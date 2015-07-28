class StudentsController < ApplicationController

  get '/' do

    students = Students.all.to_json

  end

end
