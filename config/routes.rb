Rails.application.routes.draw do
 
  resources :locks
resources :tvs
get 'speakerdetails'=>'speaker#index'
get 'speakerdetails/new'=>'speaker#new'
post 'speakerdetails'=>'speaker#create'
get 'speakerdetails/:id'=>'speaker#show'
get 'speakerdetails/:id/edit'=> 'speaker#edit'
patch 'speakerdetails/:id'=>'speaker#update'
delete 'speakerdetails/:id'=>'speaker#destroy'

get 'blooddetails'=>'blood#index'
get 'blooddetails/new'=>'blood#new'
post 'blooddetails'=>'blood#create'
get 'blooddetails/:id'=>'blood#show'
get 'blooddetails/:id/edit'=> 'blood#edit'
patch 'blooddetails/:id'=>'blood#update'
delete 'blooddetails/:id'=>'blood#destroy'
  end
