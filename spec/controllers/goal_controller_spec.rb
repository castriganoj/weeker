require 'rails_helper'

   describe GoalsController do


  it "should redirect to the current week's page" do
    get '/lists'
    this_week = Date.today.strftime("%U").to_i
    response.should redirect_to(lists_path/this_week)
  end
end
  