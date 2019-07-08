class CommentsController < ApplicationController
  before_action :authenticate_user!   #require user to be logged in

  def create
    @place = Place.find(params[:place_id])  #pull place_id out of URL
    @place.comments.create(comment_params.merge(user: current_user))  #connect comments to the place, merge in info about user
    redirect_to place_path(@place) 
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)  #pull data from comments form
  end
end
