RailsPortfolio::Application.routes.draw do
  
  #----------------Pages Controller----------------------#
  
  get "home" => 'pages#welcome', :as => "welcome"
  
  get "about" => 'pages#bio', :as => "bio"
  
  #---------------ClassProject Model----------------#
  
  get "classprojects" => 'class_projects#index', :as => "class_project"
  
  get "classprojects/new" => 'class_projects#new', :as => "project_new"
  get "classprojects/:id/edit" => 'class_projects#edit', :as => "project_edit"
  
  post "classprojects" => 'class_projects#create' # Notice that the path 'classprojects' is the same as the index path.
  put "classprojects/:id" => 'class_projects#update' # Notice that the path 'classprojects/:id' is the same as the show route.
  
  get "classprojects/:id" => 'class_projects#show', :as => "project"
   
  #-----------------Contacts Model-------------------#
  
  get "contacts" => 'contacts#index', :as => "contact_list"
  
  get "contacts/new" => 'contacts#new', :as => "contact_new"
  get "contacts/:id/edit" => 'contact#edit', :as => "contact_edit"
  
  post "contacts" => 'contacts#create'
  put "contacts/:id" => 'contacts#update'
  
  get "contacts/:id" => 'contacts#show', :as => "contact"
  
  #------------------Article Model--------------------#
  
  get "articles" => 'article#index', :as => "article_list"
  
  get "articles/new" => 'article#new', :as => "article_new"
  get "articles/:id/edit" => 'article#edit', :as => "article_edit"
  
  post "articles" => 'article#create'
  put "articles/:id" => 'article#update'
  
  get "articles/:id" => 'article#show', :as => "article"
  
end
