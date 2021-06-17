class CreateExerciseSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_schedules do |t|
      t.string :exercise_id
      t.bigint :member_id
      t.string :schedule

      t.timestamps
    end
  end
end
