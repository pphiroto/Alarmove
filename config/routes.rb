Rails.application.routes.draw do
  get 'home/setting' => "home#setting"
  post "home/decision" => "home#decision"
  get "home/sleeping" => "home#sleeping"
  get "home/getup" => "home#getup"
end
