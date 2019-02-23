Rails.application.routes.draw do
  devise_for :users

  root 'items#index'
  get 'users/mypage'
  get 'users/payment'
  get 'users/profile'
  get 'users/identification'
  get 'users/mypage-edit'
  resources :users, only: [:index, :new]
  post 'users/confirm' => 'users#confirm'
  get 'items/sell'
  get 'items/pconfirm'
  get 'items/edit'
  get 'welcome/index'
  resources :items do
    member do
      get 'buy'
      post 'pay'
    end
    resources :likes, only: [:create, :destroy]
  end
end
