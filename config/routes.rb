Rails.application.routes.draw do
  namespace :api do
    get '/all_caps' => 'games#all_caps_action'
    get '/a_name' => 'games#a_name_action'
    get '/string_guessing' => 'games#string_guess_action'
  end
end
