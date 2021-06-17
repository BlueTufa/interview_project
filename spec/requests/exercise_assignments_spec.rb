require 'rails_helper'

RSpec.describe "ExerciseAssignments", type: :request do
  describe "GET /exercise_assignments" do
    it "creates a new assignment" do
      expect {
        post exercise_assignments_path({ exercise_assignment: {member_id: 11, exercise_id: 'welcome_to_brightline' }})

      }.to change(ExerciseAssignment, :count).by(1)
      expect(response).to have_http_status(200)
    end
  end
end
