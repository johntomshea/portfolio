Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "homepage#home", as: "root"
  get 'team_builder/start'
  get 'team_builder/generate'

end
