require "byebug"

class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users.to_json({
      :include => {
        :words => {
          :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at]
    }
    )
  end

  def show
    users = User.find( params[:id] )
    render json: users.to_json({
      :include => {
        :words => {
          :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at]
    }
    )
  end

  def create
    # by signup you create a new user
    # user = User.create(username: params["username"], password: params["password"])
    user = User.create(user_params)
    user.save!
     render json: user
  end

  def update
    #STRETCH feature to include account page
  end

  def destroy
    #STRETCH feature to remove account
  end

private
def user_params
     params.permit(:username, :password)
end

def default
  {
    :include => {
      :words => {
        :except => [:created_at, :updated_at]
      }},
      :except => [:created_at, :updated_at]
  }
  end

end

# add to index below :include
# :user_words => {
#   :only => [:id, :word_id]
# },

# add to show below :include
# :user_words => {
#   :only => [:id, :word_id]
# },
