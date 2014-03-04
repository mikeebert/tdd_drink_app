DrinkApp::Application.routes.draw do
  root to: "guests#index"

  resources :drinks
  resources :guests

  post 'orders', to: 'orders#create'
  delete 'orders', to: 'orders#destroy', as: :orders_destroy
end
