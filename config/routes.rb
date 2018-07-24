Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'test' => 'home#test', as: :home_test
  get 'dbindex' => 'home#dbindex', as: :home_dbindex
  get 'detailscout' => 'home#detailscout', as: :home_detailscout

  get 'scout_views' => 'scout_views#index'
      get 'scout_views/detail' => 'detail'

  #このuser_settingはresourceをうまく使ってスリムにかけそう。後ほどリファクタリングする. 7.23記載のコメント
  get 'user_setting' => 'user_setting#index'
      get 'user_setting/viewconfig' => 'viewconfig'
      get 'user_setting/byebye'     => 'byebye'
      get 'user_setting/logininfo'  => 'logininfo'
      get 'user_setting/popupconfig'=> 'popupconfig'

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
