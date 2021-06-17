class ExerciseController < ApplicationController
  def index
    json_response(Exercise.all)
  end

  def create
    json_response({error_key: 'An exercise cannot be created'}, :not_implemented)
  end

  def show
    begin
      json_response(Exercise.find(params[:id]))
    rescue => e
      puts "ERROR: item #{id} not found.  #{e}"
      json_response({error_key: 'OBJECT_NOT_FOUND'}, :not_found)
    end
  end
end