class Api::GamesController < ApplicationController
  def all_caps_action
    @name = params[:name].upcase
    render 'all_caps.json.jbuilder'
  end

  def a_name_action
    @name = params[:name]

    if @name[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'a_name.json.jbuilder'
  end

  def string_guess_action
    @guess = params[:guess].to_i
    target_number = 42

    if target_number > @guess
      @message = "Too Low! Try a higher number."
    elsif target_number < @guess
      @message = "Nice try but you are found lacking! Guess a lower number"        
    else
      @message = "You got, it's just right... Like Goldielocks."
    end

    render 'string_guess.json.jbuilder'
  end
end
