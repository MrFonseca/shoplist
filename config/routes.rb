Rails.application.routes.draw do
  root 'static_pages#home'

	resources :items, except: [:show, :new]
  resources :categories, except: :show
  resources :lists do
    member do
      get 'check_item'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
