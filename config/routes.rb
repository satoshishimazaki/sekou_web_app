Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'test' => 'home#test', as: :home_test
  get 'dbindex' => 'home#dbindex', as: :home_dbindex
  get 'detailscout' => 'home#detailscout', as: :home_detailscout
  get 'firstscout' => 'home#firstscout', as: :home_firstscout

  #求人企業から送られてきたスカウト一覧を表示するページ  7.31記載のコメント
  get 'scout_views' => 'scout_views#index'
      get 'scout_views/detail' => 'detail'

  #求職者(=ユーザー)のメニュー画面
  get 'user_menu' => 'user_menu#index'

  #スカウトメッセージのメニュー画面
  get 'scout_messages' => 'scout_messages#index'

  #このuser_settingはresourceをうまく使ってスリムにかけそう。後ほどリファクタリングする. 7.23記載のコメント
  get 'user_setting'   => 'user_setting#index'
      get 'user_setting/viewconfig'   => 'viewconfig'
      get 'user_setting/byebye'       => 'byebye'
      get 'user_setting/logininfo'    => 'logininfo'
      get 'user_setting/popupconfig'  => 'popupconfig'
      get 'user_setting/byebyeresult' => 'byebyeresult'

  #このclient_settingはresourceをうまく使ってスリムにかけそう。後ほどリファクタリングする. 7.27記載のコメント
  get 'client_setting' => 'client_setting#index'
      get 'client_setting/accountsetting' => 'accountsetting'
      get 'client_setting/template'       => 'template'
      get 'client_setting/logininfo'      => 'logininfo'
      get 'client_setting/popupconfig'    => 'popupconfig'
      get 'client_setting/accountdelete'  => 'accountdelete'

  #求人会社(=client)のメニュー画面
  get 'client_menu' => 'client_menu#index'

  #clients_accountへのルーティング
    resources :client_accounts

  #employee_accountsへのルーティング
    resources :employee_accounts do
      resources :scouts
    end

  # #clients_accountへのルーティング
  #
   resources :scouts

  #static_pagesへのルーティング
  get '/companysummary' => 'static_pages#companysummary'
  get '/contactus'      => 'static_pages#contactus'
  get '/convention'     => 'static_pages#convention'
  get '/faq'            => 'static_pages#faq'
  get '/privacypolicy'  => 'static_pages#privacypolicy'

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
      confirmations: 'clients/confirmations',
      unlooks: 'clients/unlooks',
      passwords: 'clients/passwords'
    }

end
