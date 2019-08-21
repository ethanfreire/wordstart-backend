require "byebug"

class WordsController < ApplicationController
  def index
    words = Word.all
    render json: words.to_json({
      :include => {
        :users => {
          :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at]
    }
    )
  end

  def show
    words = Word.find( params[:id] )
    render json: words.to_json({
      :include => {
        :users => {
          :except => [:created_at, :updated_at]
        }},
        :except => [:created_at, :updated_at]
    }
    )
  end

  def create
    #when submitting form on getWordPage , update DB with current loggin in user
    word = Word.create(word_params)
    word.save!
    render json: word

  end

  def update
    #when clicked on the edit button on wordCard
    Word.find(params[:id]).update(word_params)
    render json: Word.find(params[:id])
  end

  def destroy

    #when clicked on the delete button on wordCard
    @word = Word.find(params[:id])
    @word.destroy
    render json: @word
  end


  private

  def word_params
    params.permit(:word, :definition, :synonym, :part_of_speech, :examples, :canvas_image)
  end

  def default
    {
        :include => {
          :users => {
            :except => [:created_at, :updated_at]
          }},
          :except => [:created_at, :updated_at]
    }
  end

end
