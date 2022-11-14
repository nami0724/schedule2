Rails.application.routes.draw do
  get "schedules/index" ,to:"schedules#index"
  get "schedules/new" ,to:"schedules#new", as: :schedules_new
  get "schedules/show" ,to:"schedules#show", as: :schedules_show
  get "schedules/edit" ,to:"schedules#edit", as: :schedules_edit
  get "schedules.destroy" ,to:"schedule#destroy", as: :schedules_destroy
  patch 'schedules/:id', to: 'schedules#update'
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :schedules
 end