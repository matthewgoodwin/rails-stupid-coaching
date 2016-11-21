class CoachingController < ApplicationController
  def answer
    @query = params[:query]

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
        return "Silly question, get dressed and go to work!"
    elsif your_message != "I am going to work right now!"
      return "I don't care, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    end # end of if statement
  end # end of coach answer

# still wondering how to prepend a stored message to the coach_answer method on line 16
    def coach_answer_enhanced(your_message)
      if your_message == "I AM GOING TO WORK RIGHT NOW!"
        return ""
      elsif your_message == your_message.upcase
        return "I can feel your motivation!" + " " + coach_answer(your_message)
      else
        return coach_answer(your_message)
      end
      # TODO: return coach answer to your_message, with additional custom rules of yours!
      # if (your_message.upcase) && (your_message.include? "?")
      #   return "Silly question, get dressed and go to work!".prepend("I can feel your motivation! ")
    end # end of coaching answer enhanced
      @answer = coach_answer_enhanced(@query)
    # render plain: "why does this black all"
  end # end of answer

  def ask

  end
end
