Rails.application.routes.draw do
  get 'dashboard/index'
  get 'home/index'

  devise_for :admins, path: 'admins', controllers: { 
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_scope :admin do  
    get '/admins/sign_out' => 'admins/sessions#destroy'     
  end

  root to: 'home#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
