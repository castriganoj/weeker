class MainController < ApplicationController
  def index
		this_week = Date.today.strftime("%U").to_i
    @list = List.find(this_week)
    @goal = @list.goals.find(all)
		
  end
end
