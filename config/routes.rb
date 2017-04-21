Rails.application.routes.draw do
  get 'beers', to: 'menu_sections#beers'
  resources :menu_sections, only: :index, path: 'menu'
  resources :lunch_menu_, only: :index, path: 'lunch_menu'

  get 'craft-beers', to: 'menu_sections#craft_beers'
  get 'wine-list', to: 'menu_sections#wine_list'
  namespace :admin do
    get 'user_instructions', to: 'pages#user_instructions'
    resources :menu_sections, except: :show
    resources :users, except: :show
    resources :sessions, only: [:new, :create] do
      get 'destroy', to: 'sessions#destroy', as: :destroy, on: :collection
    end
  end

  root to: 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
