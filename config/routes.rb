Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#usersコントローラ
  get "/users/:id/company" => "users#company"
  get "/login" => "users#login"
  get "/users/:id/mylist" => "users#mylist"
  get "/new" => "users#new_user"
  get "/users/:id" => "users#user"

#workコントローラ
  get "work/new_report" => "work#new_report"
  get "work/new_company" => "work#new_company"
  get "work/report/:id" => "work#report"
  get "work/company/:id" => "work#show_company"

end
