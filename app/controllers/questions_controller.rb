class QuestionsController < ApplicationController
  def ask
  end

  def home
  end

  def answer
    @question = params[:question]

    @answer = if @question.downcase.include?('work')
                "Great! Keep working!"
              elsif @question.end_with?('?')
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
