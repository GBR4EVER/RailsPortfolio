class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.text :summary
      t.text :code_language
      t.text :github

      t.timestamps
    end
  end
end
