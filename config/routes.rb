Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  post '/abuelita/abuelita', to: 'abuelita#abuelita', as: 'abuelita'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
