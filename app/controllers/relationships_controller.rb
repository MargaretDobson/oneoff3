class RelationshipsController < ApplicationController
  # def follow_user
  #   @user = User.find_by! :user_id params[:user_id]
  #   current_user.follow(user.id)
  # end

  def follow_user
    Follow.create!(follower_id: current_user.id, following_id:(params[:following_id]))
    redirect_to root_path
  end

  def unfollow_user
    relationship = Follow.find_by!(follower_id: current_user.id, following_id:(params[:following_id]))
    relationship.destroy
    redirect_to request.referrer
  end
end
