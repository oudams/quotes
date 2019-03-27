Rails.application.routes.draw do
  get 'quotes/index'
  get 'quotes/show'
  root to: "quotes#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
