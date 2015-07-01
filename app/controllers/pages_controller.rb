class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to events_path
  	end	
  end
end
