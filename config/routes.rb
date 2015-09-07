Rails.application.routes.draw do
resources :staffers
root 'staffers#index'
end
