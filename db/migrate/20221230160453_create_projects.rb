class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url_git
      t.string :url_project
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
