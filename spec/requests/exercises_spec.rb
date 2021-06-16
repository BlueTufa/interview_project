require 'rails_helper'

RSpec.describe "Exercise", type: :request do
  describe "GET /exercise" do
    def exercises_path(id = '')
      "/exercise/#{id}"
    end
    it "returns all" do
      get exercises_path
      expect(response).to have_http_status(:ok)
    end

    it "returns one" do
      get exercises_path('welcome_to_brightline')
      expect(response).to have_http_status(:ok)
    end

    it "returns none" do
      get exercises_path('invalid_id')
      expect(response).to have_http_status(:not_found)
    end

    it "create fails" do
      post exercises_path
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
