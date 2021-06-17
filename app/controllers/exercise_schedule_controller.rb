class ExerciseScheduleController < ApplicationController
  def index

  end

  def create
    # TODO: schedule validation here
    ExerciseSchedule.create!(schedule_params)
  end

  :private
  def schedule_params
    params.require(:exercise_schedule).permit(:member_id, :exercise_id, :schedule)
  end
end
