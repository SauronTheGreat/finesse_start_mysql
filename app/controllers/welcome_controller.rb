class WelcomeController < ApplicationController
  def index
    #this is the landing method for tthe home page
  end

  def sample
    current_user.admin=false
    current_user.save!
   redirect_to root_path
  end
end
