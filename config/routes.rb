Curso::Application.routes.draw do

  get "pages/localizacao"
  match '/localizacao'   => "pages#localizacao",  :as => :home


  devise_for :admins,:controllers => {:session => 'admin/sessions',
  :session => 'admin/passwords'}

  devise_for :users

  resources :trainings, :only => [:index,:show], :path => "treinamentos"
  resources :instructors, :only => [:index,:show], :path => "professores"
  resources :inquiries, :only => [:new, :create], :path => "contato"

  root :to => "pages#index"

  namespace :admin do
    root :to => "dashboard#index"
    resources :trainings
    resources :instructors
  end


end

