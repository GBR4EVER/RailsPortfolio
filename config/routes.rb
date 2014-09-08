RailsPortfolio::Application.routes.draw do
  get "home" => 'pages#welcome', :as => "welcome"
  
  get "about" => 'pages#bio', :as => "bio"
  
  get "https://twitter.com/HappyHourHusker" => 'pages#twitter', :as => "twitter"
  
  get "https://www.linkedin.com/in/coreyburkley" => 'pages#linkedin', :as => "linkedin"
  
  
end
