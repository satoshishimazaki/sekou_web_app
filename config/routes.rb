Rails.application.routes.draw do

  resources :employees_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'


  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      confirmation: 'users/confirmations',
      unlooks: 'users/unlooks',
      passwords: 'users/passwords'
    }



      devise_for :clients, controllers: {
        registrations: 'clients/registrations',
        sessions: 'clients/sessions',
        confirmations: 'clients/confimation',
        unlooks: 'clients/unlooks',
        passwords: 'clients/passwords'
      }



end
