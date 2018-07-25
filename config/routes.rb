Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'test' => 'home#test', as: :home_test
  get 'dbindex' => 'home#dbindex', as: :home_dbindex
  get 'detailscout' => 'home#detailscout', as: :home_detailscout
  get 'firstscout' => 'home#firstscout', as: :home_firstscout

  get 'scout_views' => 'scout_views#index'
      get 'scout_views/detail' => 'detail'

  #このuser_settingはresourceをうまく使ってスリムにかけそう。後ほどリファクタリングする. 7.23記載のコメント
  get 'user_setting' => 'user_setting#index'
      get 'user_setting/viewconfig' => 'viewconfig'
      get 'user_setting/byebye'     => 'byebye'
      get 'user_setting/logininfo'  => 'logininfo'
      get 'user_setting/popupconfig'=> 'popupconfig'

  #employee_accountsへのルーティング
    resources :employees_accounts


  #staticpagesへのルーティング
  get '/companysummary' => 'static_pages#companysummary'
  get '/contactus'      => 'static_pages#contactus'
  get '/convention'     => 'static_pages#convention'
  get '/faq'            => 'static_pages#faq'
  get '/privacypolicy'  => 'static_pages#praivacypolicy'

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      confirmation: 'users/confirmations',
      unlooks: 'users/unlooks',
      passwords: 'users/passwords'
    }


  devise_for :clients, controllers: {
      registrations: 'clients/registrations',
      sessions: 'clients/sessions',
      confirmations: 'clients/confimation',
      unlooks: 'clients/unlooks',
      passwords: 'clients/passwords'
    }

end
