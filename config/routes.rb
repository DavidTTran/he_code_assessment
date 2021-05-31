Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :dnd do
        resources :classes, only: [:index]
        resources :monsters, only: [:index]
        resources :parties, only: [:index, :update, :destroy]
        post "/parties/new", to: "parties#create"
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
