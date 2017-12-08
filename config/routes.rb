Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'increment/:id' => 'application#get_increment'
  get 'decrement/:id' => 'application#get_decrement'
  get 'real_home' => 'index_page#index'
end
