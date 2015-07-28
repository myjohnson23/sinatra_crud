class StudentsController < ApplicationController
  get '/' do
    @students = Students.all
    erb :students_index
  end

end
