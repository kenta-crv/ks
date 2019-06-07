Rails.application.routes.draw do
  root to: 'top#index' #トップページ
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/lp' => 'top#lp' #LPページ　
  get '/business' => 'top#business' #事業一覧
  get '/president' => 'top#president' #社長情報
  get '/company' => 'top#company' #会社概要
  get '/contact' => 'contact#index' #問い合わせフォーム
  post '/confirm' => 'contact#confirm' #確認
  post '/thanks' => 'contact#thanks' #完了

  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end
