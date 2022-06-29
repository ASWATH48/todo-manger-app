Rails.application.routes.draw do
  
 root 'main#index'
  # get 'main/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match 'todo',:to => 'main#index',:via => :get

 match 'main/create',:to => 'main#create',:via => :post
#  match '/delete/:id' ,:to =>  'main#delete',:via => :get

 get '/delete/:id' => 'main#delete',as: :delete


end
