class Api::GamesController < ApplicationController
  def fortune_action
    fortunes = [
      "You will go to Arby's in 3 days.",
      "You will find 20 dollars.",
      "You will meet an unexpected friend for lunch.",
    ]
    @fortune = fortunes.sample
    render "fortune.json.jb"
  end
end
