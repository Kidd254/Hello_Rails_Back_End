Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      get "messages/random", to: "messages#random_greeting"
    end
  end
end
