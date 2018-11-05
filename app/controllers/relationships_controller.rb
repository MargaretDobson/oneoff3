class RelationshipsController < ApplicationController
  # def follow_user
  #   @user = User.find_by! :user_id params[:user_id]
  #   current_user.follow(user.id)
  # end

  def follow_user
    Follow.create!(follower_id: current_user.id, following_id:(params[:following_id]))
    respond_to do |format|
      format.html
    end
  end

  def unfollow_user
    @user = User.find_by! username: params[:username]
    current_user.unfollow(user.id)
  end
end
