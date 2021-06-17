class ExerciseAssignmentsController < ApplicationController
  def index

  end

  def create
    json_response(ExerciseAssignment.create!(assignment_params))
  end

  def assignment_params
    puts params.inspect # what is our logging standard?
    params.require(:exercise_assignment).permit(:member_id, :exercise_id)
  end
end
