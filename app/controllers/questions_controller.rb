class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer =
      if @question == "i'm going to work"
        'great'
      elsif @question.include?('?')
        'Silly question, get dressed and go to work!.'
      else
        "I don't care, get dressed and go to work!."
      end
  end
end
