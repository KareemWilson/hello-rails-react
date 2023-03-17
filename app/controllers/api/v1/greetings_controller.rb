class Api::V1::GreetingsController < ApplicationController
  def random
    @greeting = Greeting.order('RANDOM()').first.message

    render json: { greeting: @greeting }
  end
end
