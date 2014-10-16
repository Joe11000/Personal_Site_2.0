class CreateHomeProjects < ActiveRecord::Migration
  def change
    create_table :home_projects do |t|
      t.string :name
      t.text :language
      t.text :description

      t.timestamps
    end
  end
end
