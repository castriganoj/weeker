class WelcomeController < ApplicationController
  def index
		d = Date.today
		week_number = d.strftime("%U").to_i
		@list = List.find_by_name(week_number) # will need to rescue and rediret for no record weeks
		redirect_to list_path(@list)
	end
end
