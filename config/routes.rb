Rails.application.routes.draw do
  root 'words#index'
  resources :words, only: %i[index new create show] # this syntax is the same as [:index, :new, :create, :show]
end
