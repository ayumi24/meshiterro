Rails.application.routes.draw do
 devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :post_images, only: [:new, :create, :index, :show]

  root to: "homes#top"
 get 'homes/about' => "homes#about", as: 'about'
end
