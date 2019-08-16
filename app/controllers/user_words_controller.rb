class UserWordsController < ApplicationController
  def create
    userword = UserWord.create(userword_params)
    render json: userword
  end

  def index
    render json: UserWord.all
  end

private
  def userword_params
    params.permit(:user_id, :word_id, :activeword)
  end



end
