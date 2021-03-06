Rails.application.routes.draw do

  root 'static#home'

  get '/contact' => 'static#contact'
  resources :subscriptions, only: [:create]

  resources :questions

  namespace :start do
    get 'business-plan' => '/static#business_plan'
    get 'finance-your-business' => '/static#finance_your_business'
    get 'find-a-location' => '/static#find_a_location'
    get 'choose-a-name' => '/static#choose_a_name'
    get 'register-your-business' => '/static#register_your_business'
    get 'permits-and-licenses' => '/static#permits_and_licenses'
    get 'building-and-inspections' => '/static#building_and_inspections'
    get 'open-your-business' => '/static#open_your_business'
  end

end
