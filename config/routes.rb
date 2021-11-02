Rails.application.routes.draw do
  resources :words, only: %i[index new create] # this syntax is the same as [:index, :new, :create]
end
