# == Schema Information
#
# Table name: exercise_schedules
#
#  id          :bigint           not null, primary key
#  schedule    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  exercise_id :string
#  member_id   :bigint
#
class ExerciseSchedule < ApplicationRecord
end
