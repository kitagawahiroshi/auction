#CRUDアプリ(C:CREATE、R:READ、U:UPDATE、D:DELETE)
Rails.application.routes.draw do
  resources :items #いろいろまとめたコード $ rails routes とか $ bin/rails routes | grep items  http://localhost:3000/rails/info/routesで中身がみれる

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
