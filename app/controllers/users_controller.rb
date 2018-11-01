class UsersController < ApplicationController
  # require '../models/product'
  #user profile page
  #Current asigned in user can see their web page.
  # localhost:3000/users/show
  #I hope that it works on your mashine as well as on mine.
  #Lots of love and good luck!
  #Danny <3

  def show
    #@user equals to what ever user is curently logged on. It get all of its variables
    @user = current_user

    #@products now equals to an array of all product records of that user
    @products = Product.where(user_id: current_user.id)
  end
end
