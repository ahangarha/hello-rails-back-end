class RandomGreetingController < ApplicationController
  def index
    greeting = Greeting.all.sample

    if greeting.blank?
      render json: { data: 'Nothing found!', status: 404 }
    else
      greeting_text = greeting.text
      render json: { data: greeting_text, status: 200 }
    end
  end
end
