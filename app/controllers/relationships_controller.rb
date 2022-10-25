class RelationshipsController < ApplicationController
  def followings
    user = User.find(params[:id])
  end

  def followers
    user = User.find(params[:id])
  end

  def creatte
    current_user.follow(params[:id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:id])
    redirect_to request.referer
  end

end
