Rails.application.routes.draw do
  resources :words, only: %i[index new create show] # this syntax is the same as [:index, :new, :create, :show]
end
