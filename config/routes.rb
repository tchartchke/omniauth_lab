Rails.application.routes.draw do
  get 'welcome/home'
  root 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

end
