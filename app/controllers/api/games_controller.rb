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

  def lotto_action
    # @numbers = [
    #   rand(1..60),
    #   rand(1..60),
    #   rand(1..60),
    #   rand(1..60),
    #   rand(1..60),
    #   rand(1..60),
    # ]
    @numbers = []
    index = 0
    while index < 6
      @numbers << rand(1..60)
      index = index + 1
    end
    render "lotto.json.jb"
  end
end
