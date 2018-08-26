class Api::FortunePagesController < ApplicationController

  def random_fortune
    fortunes = [
                "You will win the lottery", 
                "Someone on Tinder will swipe right on you", 
                "Keep extra pairs of underwear"
                ]
    @random_fortune = fortunes.sample
    render "random_fortune.json.jbuilder"
  end

  def random_number
    possible_numbers = (1..60).to_a
    picked_numbers = possible_numbers.sample(6)
 
    @final_numbers = "Your lucky numbers for the day are #{picked_numbers.join(" - ")}"

    render "random_number.json.jbuilder"
  end
end
