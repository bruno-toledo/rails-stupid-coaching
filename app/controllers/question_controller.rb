class QuestionController < ApplicationController
  # attr_reader :ask
  QUESTIONS =

  ANSWERS = {
    answer1: 'Silly question, get dressed and go to work!',
    answer2: "I don't care, get dressed and go to work!",
    answer3: 'Great!'
  }

  def ask
  end

  def answer
    @question = params[:question]
    if params[:question] == 'I am going to work'
      @answer = ANSWERS[:answer3]
    elsif params[:question][-1] == '?'
      @answer = ANSWERS[:answer1]
    else
      @answer = ANSWERS[:answer2]
    end
  end
end
