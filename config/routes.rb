ClearUp::Application.routes.draw do

 # get "showBoard_board/:id/project" => "boards#show", :as => :showBoard
 # get "createBoard_board/:id" => "boards#new", :as => :createBoard

resources :projects do
  resources :boards
  resources :sprints
  end

resources :boards do
  resources :stories
  resources :columns
end

resources :users do
  resources :projects
end

resources :columns do
  resources :tasks
end

resources :stories do
  resources :tasks
end


resources :boards do
  resources :stories do
    resources :tasks  
  end 
end

resources :boards do
  resources :columns do
    resources :tasks  
  end 
end

  resources :sprints

  resources :columns

  resources :tasks

  resources :boards

  match "joinProject_user/:id" => "users#joinProject", :as => :joinProject

resources :tasks
  post "moveup" => "tasks#moveup"
  post "movedown" => "tasks#movedown"

#  resources :projects, :has_many => :boards, shallow => true

  get "addStory_project/:id" => "projects#addStory", :as => :addStory
  get "showMy_project" => "projects#showMyProjects"
  get "create_project" => "projects#new"

resources :stories
  post "moveup" => "stories#moveup"
  post "movedown" => "stories#movedown"


resources :user_sessions

resources :users
  get "login" => "user_sessions#new"
  get "logout" => "user_sessions#destroy"
  
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
  root :to => 'users#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
