Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#login_form"
#usersコントローラ
  post "/login" => "users#login"
  post "/users/create" => "users#create"
  post "/users/:id/update" => "users#update"
  get "/users/:id/company" => "users#company"
  get "/login" => "users#login_form"
  get "/users/:id/mylist" => "users#mylist"
  get "/users/:id/edit" => "users#edit"
  get "/new" => "users#new_user"
  get "/users/:id" => "users#user"

#workコントローラ
  get "work/:id/getgeolocation" => "work#getgeolocation"
  post "work/report/:id/advance" => "work#status_advance"
  post "work/report/:id/retreat" => "work#status_retreat"
  post "work/report/:id/update" => "work#update"

  get "work/report/:id/edit" => "work#edit"
  get "work/report/new" => "work#new_report"
  get "work/company/new" => "work#new_company"
  get "work/report/:id" => "work#report"
  get "work/company/:id" => "work#show_company"
  post "work/report/create" => "work#create_report"
  post "work/company/create" => "work#create_company"

  end
