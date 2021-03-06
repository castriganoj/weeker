require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
 describe "new user session should redirect to current week's list" do
    it "should check if user session is active" do
			controller
				expect(session[:in_session] == nil).to eq(true) 
			{:get => '/'}
			this_week = Date.today.strftime("%U").to_i
			controller.should redirect_to(list_path(this_week))
			end
	end
end
