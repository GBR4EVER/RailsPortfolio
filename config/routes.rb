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
  
  get "contacts" => 'contacts#index', :as => "contacts"
  
  get "contacts/new" => 'contacts#new', :as => "contact_new"
  get "contacts/:id/edit" => 'contact#edit', :as => "contact_edit"
  
  post "contacts" => 'contacts#create'
  put "contacts/:id" => 'contacts#update'
  
  get "contacts/:id" => 'contacts#show', :as => "contact"
  
  #------------------Article Model--------------------#
  
  get "articles" => 'articles#index', :as => "article_list"
  
  get "articles/new" => 'articles#new', :as => "article_new"
  get "articles/:id/edit" => 'articles#edit', :as => "article_edit"
  
  post "articles" => 'articles#create'
  put "articles/:id" => 'articles#update'
  
  get "articles/:id" => 'articles#show', :as => "article"
  delete 'articles/:id/delete' => 'articles#destroy', as: 'article_delete'
  
  #-------------------Like Model-----------------------#
  
  get "likes" => 'likes#index', as: 'likes'
  
  get 'likes/new' => 'likes#new', as: 'new_like'
  get 'likes/:id/edit' => 'likes#edit', as: 'edit_like'
  
  post 'likes' => 'likes#create'
  put 'likes/:id' => 'likes#update'
  
  get 'likes/:id' => 'likes#show', as: 'like'
  delete 'likes/:id/delete' => 'likes#destroy', as: 'delete_like'
  
  
  
end

