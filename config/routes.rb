Rails.application.routes.draw do
  devise_for :users

  # トップ
  root "home#index"

  # マイページ
  resource :mypage, only: :show, controller: "my_pages"

  # スタイリングと提案フロー
  resources :stylings do
    member do
      # 例) /stylings/:id/proposals/select_category
      get  "proposals/select_category", to: "proposals#select_category", as: :select_category
      get  "proposals/select_item",     to: "proposals#select_item",     as: :select_item
      post "proposals",                 to: "proposals#create",          as: :proposals
    end
  end

  resources :items
end
