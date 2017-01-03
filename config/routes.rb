Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

	resources :items, except: [:show, :new]
  resources :categories, except: :show
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
