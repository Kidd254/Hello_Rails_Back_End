class Api::V2::MessagesController < ApplicationController
  def random_greeting
    greeting = Greeting.order('RANDOM()').first
    if greeting.nil?
      render json: { error: 'Record not found' }, status: 500
    else
      render json: { message: message.greetings }
    end
  end
end
