Rails.application.routes.draw do
  root 'colcal#index'
  devise_for :users
  resources :users, only: :index do
    collection do
      get 'search'
    end
  end
  resources :events, only: [:index, :new, :create, :edit, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :tickets, only: [:new, :create, :destroy] do
    collection do
      get 'confilm'
    end
  end
end

    #resources :comments

    #resources :images

  # resources :products do
  #   member do #ID管理で必要なアクションを追加
  #    get 'search'
  #   end
  #   collection do #普通に管理したいアクションを追加
  #    get 'search'
  #   end
  # end

