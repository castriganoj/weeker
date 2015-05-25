require 'rails_helper'

RSpec.describe "UserFlows", type: :request do
  describe "root path" do
    it "directs users to current week's list" do
      get "/"
      expect(response).to have_http_status(302)
			assert_generates "/lists", :controller => "lists", :action => "index"
    end
  end
end

