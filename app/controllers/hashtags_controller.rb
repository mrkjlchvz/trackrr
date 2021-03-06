class HashtagsController < ApplicationController

  before_filter :authenticate_user!

  def create
  	@user = current_user.build_hashtag(params[:hashtag])

  	if @user.save
  		redirect_to root_path, :notice => "Hashtag modified!"
  	else
  		redirect_to root_path, :alert => "Oops! An error occurred while changing hashtag"
  	end
  end

  def update
  	@user = current_user.build_hashtag(params[:hashtag])

  	if @user.save
  		redirect_to root_path, :notice => "Hashtag modified!"
  	else
  		redirect_to root_path, :alert => "Oops! An error occurred while changing hashtag"
  	end
  end
end
