RailsPortfolio::Application.routes.draw do
  get "home" => 'pages#welcome', :as => "welcome"
  
  get "about" => 'pages#bio', :as => "bio"
  
  get "https://twitter.com/HappyHourHusker" => 'pages#twitter', :as => "twitter"
  
  get "https://www.linkedin.com/in/coreyburkley" => 'pages#linkedin', :as => "linkedin"
  
  get "classprojects/index" => 'class_projects#index', :as => "list"
  
  get "classprojects/new" => 'class_projects#new', :as => "new_project"
  
  post "classprojects/create" => 'class_projects#create'
  
end
