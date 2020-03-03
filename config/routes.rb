Rails.application.routes.draw do
  namespace :api do
    get "/fortune_url" => "games#fortune_action"
    get "/lotto_url" => "games#lotto_action"
    get "/counter_url" => "games#counter_action"
  end
end
