Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'test' => 'home#test', as: :home_test
  get 'dbindex' => 'home#dbindex', as: :home_dbindex
  get 'detailscout' => 'home#detailscout', as: :home_detailscout
  get 'firstscout' => 'home#firstscout', as: :home_firstscout

  #ユーザーログイン後のユーザメニューへのルーティング
  #求職者(=ユーザー)のメニュー画面
  scope :user_menu do
      get '' => 'user_menu#index', as: :user_menu

      #履歴書のルーティング
      scope :resume do
          get '' => 'users#index', as: :resume
          get 'show' => 'users#show', as: :show_resume
          get 'edit' => 'users#edit', as: :edit_resume
          post 'edit' => 'users#update', as: ''
          patch 'edit' => 'users#update', as: ''
      end

      #設定ページのルーティング
      scope :user_setting do
          get ''   => 'user_setting#index', as: :user_setting
          get 'viewconfig'   => 'user_setting#viewconfig', as: :user_setting_viewconfig
          get 'byebye'       => 'user_setting#byebye', as: :user_setting_byebye
          get 'logininfo'    => 'user_setting#logininfo', as: :user_setting_logininfo
          get 'popupconfig'  => 'user_setting#popupconfig', as: :user_setting_popupconfig
          get 'byebyeresult' => 'user_setting#byebyeresult', as: :user_setting_byebyeresult
          post 'byebyeaccept' => 'user_setting#byebyeaccept', as: :user_setting_byebyeaccept
      end

      #スカウトページのルーティング
      scope :scout_views do
          get '' => 'scout_views#index', as: :scout_views
          get 'detail' => 'scout_views#detail', as: :scout_view_detail
      end

      #スカウトメッセージのメニュー画面
      scope :scout_messages do
          get '' => 'scout_messages#index', as: :scout_messages
      end
  end


  #求人会社(=client)のメニュー画面
  scoup :client_menu do
    get 'client_menu' => 'client_menu#index'

          #企業情報編集ページのルーティング
          scope :coinfo do
              get '' => 'clients#index', as: :resume
              get 'show' => 'clients#show', as: :show_resume
              get 'edit' => 'clients#edit', as: :edit_resume
              post 'edit' => 'clients#update', as: ''
              patch 'edit' => 'clients#update', as: ''
          end

          scope :client_setting do
            #このclient_settingはresourceをうまく使ってスリムにかけそう。後ほどリファクタリングする. 7.27記載のコメント
              get 'client_setting' => 'client_setting#index'
                  get 'client_setting/accountsetting' => 'accountsetting'
                  get 'client_setting/template'       => 'template'
                  get 'client_setting/logininfo'      => 'logininfo'
                  get 'client_setting/popupconfig'    => 'popupconfig'
                  get 'client_setting/accountdelete'  => 'accountdelete'
          end


        end

  # スカウトページへのルーティング
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
