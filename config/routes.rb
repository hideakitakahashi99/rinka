Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/menu'
  get  'message_index' =>'messages#message_index'
  post 'confirm' => 'messages#confirm'
  post 'done' => 'messages#done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
