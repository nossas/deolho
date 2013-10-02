Deolho::Application.routes.draw do
  root :to => 'posts#index'

  get '/posts/highlight', :to => "posts#highlight"
  resources :posts

  resources :words do
    get :qtip, :to => "words#qtip"
  end
  resources :tags
  resources :subscribers, :only => [:new, :create]
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/vereador', :to => "pages#vereador", :as => "vereador"
  match '/projeto_de_lei', :to => "pages#projeto_de_lei", :as => :projeto_de_lei
  match '/participacao_popular', :to => "pages#participacao_popular", :as => :participacao_popular
  match '/orcamento', :to => "pages#orcamento", :as => "orcamento"
  match '/mandato', :to => "pages#mandato", :as => "mandato"
  match '/eleicao', :to => "pages#eleicao"
  match '/camara', :to => "pages#camara"
  match '/about', :to => "pages#about", :as => "about"
  match '/typeform', :to => "pages#typeform", :as => "typeform"
  match "/404", :to => "errors#not_found"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
