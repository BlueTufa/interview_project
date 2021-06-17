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
FactoryBot.define do
  factory :exercise_schedule do
    exercise_id { "MyString" }
    member_id { "MyString" }
    schedule { "MyString" }
  end
end
