Rails.application.routes.draw do
  get "articles/new"
  get "welcome/index"

  resources :articles do
    resources :comments
  end
  # comments is created as nested resource within articles

  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
