Rails.application.routes.draw do
 get "/random_fortune" => "api/fortune_pages#random_fortune"
 get "/random_number" => "api/fortune_pages#random_number"
end
