Rails.application.routes.draw do

  get 'welcome/index'

  devise_for :users
  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end

  root "welcome#index"
  # root "todo_lists#index"
end
