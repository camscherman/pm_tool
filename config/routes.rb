Rails.application.routes.draw do
  get('/home',{to: 'static_pages#home', as: :home})
  get('/about',{to: 'static_pages#about', as: :about})
  root('static_pages#home')

  resources :projects do
    resources :tasks, shallow: true, only:[:create, :edit, :show, :destroy,:update]
    resources :discussions, shallow: true, only:[:create, :edit, :show, :destroy, :update]
  end

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:new, :create, :edit, :update]
end
