require "byebug"

class WordsController < ApplicationController
  def index
    words = Word.all
    render json: words
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
