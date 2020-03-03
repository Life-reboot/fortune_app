Rails.application.routes.draw do
  namespace :api do
    get "/fortune_url" => "games#fortune_action"
  end
end
