Rails.application.routes.draw do

  get 'all_list/index'

  get 'public_list/index'

  get 'favorite/index'

  get 'main/index'

  get 'welcome/index'

  devise_for :users

  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end

  resources :todo_lists do
    member do
      patch :privat
      patch :public
    end
  end

  resources :todo_lists do
    member do
      put :favorite
    end
  end


  # resources :todo_lists do
  #   resources :favorites
  # end

  # resources :users do
  #   resources :favorites
  # end

  # if user_signed_in?
  #   root "todo_lists#index"
  # else
  #   root "welcome#index"
  # end

  root "welcome#index"
  # root "todo_lists#index"
end
