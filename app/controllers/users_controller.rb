class UsersController < ApplicationController

  #user profile page
  #Current asigned in user can see their web page.
  # localhost:3000/users/show
  #I hope that it works on your mashine as well as on mine.
  #Lots of love and good luck!
  #Danny <3

  def show
    @user = current_user
    #@posts = current_user TO we continued
  end
end
