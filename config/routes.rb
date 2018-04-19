Rails.application.routes.draw do
 root 'lemi#home2'
  get 'home',to: 'lemi#home2'
  get 'about',to: 'lemi#about'
  get 'characters',to: 'lemi#characters'
  get 'story',to: 'lemi#story'
  get 'contact',to: 'lemi#contact'
  get 'onTheDay',to: 'lemi#onTheDay'
  get 'reservation1',to:'lemi#reservation1'
  get 'lemi/reservation4'
  get 'lemi/attention_reservation'
  get 'home2', to: 'lemi#home2'
  get "/lemi/finished/:auth_key" => "lemi#finished"
  post "/lemi/reservation2" => "lemi#reservation2"
  post "/lemi/reservation3" => "lemi#reservation3"
  
  resources :users

end
