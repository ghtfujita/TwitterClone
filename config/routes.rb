Rails.application.routes.draw do
  resources :twclones do
    collection do
      post :confirm
    end
  end
end
