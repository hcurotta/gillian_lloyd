GillianLloyd::Application.routes.draw do
  root 'pages#index'

  get 'admin' => "pages#admin", as: :admin

  post 'update_content' => "pages#update", as: :create
  patch 'update_content' => "pages#update", as: :update

  post 'request_callback' => "pages#request_callback"

  resources :availabilities, only: [:create, :update, :destroy]
end
