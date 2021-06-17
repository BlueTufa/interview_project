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
      # get exercises_path(id: "welcome_to_brightline")
      expect(response).to have_http_status(:ok)
      # TODO: figure this out.  check return value
      # expect(response).to contain_exactly(1)
    end

    it "returns none" do
      get exercises_path('invalid_id')
      expect(response).to have_http_status(:not_found)
    end

    context "given invalid parameters" do
      it "fails" do
        post exercises_path
        expect(response).to have_http_status(:not_implemented)
      end
    end
  end
end
