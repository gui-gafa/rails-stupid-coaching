class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question[-1]
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer = check_scream(@question, @answer)
  end

  def check_scream(question, answer)
    question == question.upcase ? "I can see your motivation! #{answer}" : answer
  end
end
