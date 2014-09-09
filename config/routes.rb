RailsPortfolio::Application.routes.draw do
  get "home" => 'pages#welcome', :as => "welcome"
  
  get "about" => 'pages#bio', :as => "bio"
  
  get "https://twitter.com/HappyHourHusker" => 'pages#twitter', :as => "twitter"
  
  get "https://www.linkedin.com/in/coreyburkley" => 'pages#linkedin', :as => "linkedin"
  
  get "classprojects" => 'class_projects#index', :as => "class_project"
  
  get "classprojects/new" => 'class_projects#new', :as => "project_new"
  get "classprojects/:id/edit" => 'class_projects#edit', :as => "project_edit"
  
  post "classprojects" => 'class_projects#create' # Notice that the path 'classprojects' is the same as the index path.
  put "classprojects/:id" => 'class_projects#update' # Notice that the path 'classprojects/:id' is the same as the show route.
  
  get "classprojects/:id" => 'class_projects#show', :as => "project"
  
  
end
