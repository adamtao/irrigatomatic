Irrigatomatic::Application.routes.draw do

  get "turn_on/:id" => 'main#turn_on', as: :turn_on
  get "turn_off/:id" => 'main#turn_off', as: :turn_off
  get "all_off" => 'main#all_off', as: :all_off
  get "status/:id" => 'main#status', as: :status
  get "force_on/:id" => 'main#force_on', as: :force_on
  root :to => 'main#index'

end
