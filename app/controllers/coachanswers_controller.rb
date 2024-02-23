class CoachanswersController < ApplicationController
  def answer
    @ans = params[:question]
    @coach_answ = coach_ans(@ans)
  end
  private
  def coach_ans(your_message)
    if your_message == 'I am going to work right now!' || your_message == 'I am going to work right now!'.upcase
      ''
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
