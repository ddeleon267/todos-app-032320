Rails.application.routes.draw do
  devise_for :views

  ## we are registering our devise controllers on line 5
  devise_for :users, controllers: {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    ## you could could customise your routes and helpers like this, if you don't like the default devise routes/helpers
    # devise_scope do
    #   get 'signup', to: 'devise/registrations#new', as: 'signup'
    # end
  root to: 'application#welcome'
end
