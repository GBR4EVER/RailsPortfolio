class ClassProject < ActiveRecord::Base
  attr_accessible :code_language, :github, :name, :summary
  
  validates :name, :summary, :code_language, :github, :presence => true

end
