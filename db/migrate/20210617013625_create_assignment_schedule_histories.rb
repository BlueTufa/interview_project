class CreateAssignmentScheduleHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :assignment_schedule_histories do |t|
      t.references :exercise_schedule
      t.references :exercise_assignment
      t.datetime :assigned_at, nullable: false

      t.timestamps
    end
  end
end
