class ExerciseController < ApplicationController
  def index
    json_response(Exercise.all)
  end

  def create

  end

  def show
    id = params[:id]
    puts id # TODO: need a suitable logger here
    begin
      json_response(Exercise.find(id))
    rescue => e
      puts "ERROR: item #{id} not found.  #{e}"
      json_response({error_key: 'OBJECT_NOT_FOUND'}, :not_found)
    end
  end
end