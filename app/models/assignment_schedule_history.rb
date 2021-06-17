# == Schema Information
#
# Table name: assignment_schedule_histories
#
#  id                     :bigint           not null, primary key
#  assigned_at            :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  exercise_assignment_id :bigint
#  exercise_schedule_id   :bigint
#
# Indexes
#
#  index_assignment_schedule_histories_on_exercise_assignment_id  (exercise_assignment_id)
#  index_assignment_schedule_histories_on_exercise_schedule_id    (exercise_schedule_id)
#
class AssignmentScheduleHistory < ApplicationRecord
end
