Rails.application.routes.draw do
  resources :top, only:[:index]
  root 'top#index'

  devise_for :carriers, controllers: {
    sessions: 'carriers/sessions',
    passwords: 'carriers/passwords',
    registrations: 'carriers/registrations'
  }
  devise_for :shippers, controllers: {
    sessions: 'shippers/sessions',
    passwords: 'shippers/passwords',
    registrations: 'shippers/registrations'
  }

  resources :shipper_joint, only:[:index]
  resources :carrier_joint, only:[:index]

end