class QuestionsController < ApplicationController
  def ask

  end

  def answer
    asr = params[:question]
    @coach = if asr == 'I am going to work'
               'Great!'
             elsif asr[-1] == '?'
               'Silly question, get dressed and go to work!'
             else
               'I don\'t care, get dressed and go to work!'
             end
  end
end
