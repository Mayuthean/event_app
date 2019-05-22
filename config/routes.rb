Rails.application.routes.draw do
  devise_for :users
  # root "events#index"
  # get "/events" => "events#index"
  # get "/events/new" => "events#new", :as => "new_event"
  # post "events" => "events#create"
  # get "/events/:id" => "events#show", :as => "event"
  # get "/events/:id/edit" => "events#edit", :as => "edit_event"
  # patch "/events/:id" => "events#update"
  # put "/events/:id" => "events#update"
  # delete "/events/:id" => "events#destroy"
root "static_pages#home"
#Nested resources or Nested route
  resources :events do
    resources :registrations
  end
end
