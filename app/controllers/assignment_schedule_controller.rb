require 'date'

class AssignmentScheduleController < ApplicationController
  def index

  end
  def create
    # Here is a dead simple way to schedule tasks once per day on a weekly basis
    # It would also be possible to backdate or postdate by passing in a date arg
    day_of_week = day_abbr(Date.today)
    puts("INFO: Daily scheduler for exercise assignments was started for #{day_of_week} at #{Time.now}")

    # TODO: batching pattern needed.  How to scale to thousands of accounts per day?
    users_to_schedule = ExerciseSchedule.where("schedule LIKE '%#{day_of_week}%'")
    users_to_schedule.map do |s|
      # if the exercise assignment already has an uncompleted task, do not re-assign
      check = ExerciseAssignment.where("member_id = #{s.member_id} AND exercise_id = '#{s.exercise_id}' AND completed_at IS NULL")
      if check.size == 0
        # TODO: transaction support
        ea = ExerciseAssignment.create!(member_id: s.member_id, exercise_id: s.exercise_id)
        AssignmentScheduleHistory.create(exercise_schedule_id: s.id, exercise_assignment_id: ea.id, assigned_at: Time.now)
      end
    end
    puts("INFO: Daily scheduler for exercise assignments was completed for #{day_of_week} at #{Time.now}")
  end
  def day_abbr(date)
    day_of_week = { 0 => 'Sun', 1 => 'Mon', 2 => 'Tue', 3 => 'Wed', 4 => 'Thu', 5 => 'Fri', 6 => 'Sat' }
    day_of_week[date.wday]
  end
end
