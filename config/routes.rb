Rails.application.routes.draw do
  resource :authors, only: [:create]
  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/author/:id', to: 'authors#show', as: 'author'
  get '/author/:id/edit', to: 'authors#edit', as: 'edit_author'

  resource :posts, only: [:create]
  get '/post/new', to: 'posts#new', as: 'new_post'
  get '/post/:id', to: 'posts#show', as: 'post'
  get '/post/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/post/:id', to: 'posts#update'
end
