Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :articles

  # Read (all)
  get '/articles', to: 'articles#index'

  # Create Step 1
  get 'articles/new', to: 'articles#new'
  # Create Step 2
  post 'articles', to: 'articles#create'

  # Read (one)
  get '/articles/:id', to: 'articles#show', as: :article

  # Update Step 1
  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  # Update Step 2
  patch 'articles/:id', to: 'articles#update'

  # Delete
  delete 'articles/:id', to: 'articles#destroy'
end
