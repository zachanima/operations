Operations::Application.routes.draw do
  resources :items do
    post 'sort', on: :collection
  end
end
