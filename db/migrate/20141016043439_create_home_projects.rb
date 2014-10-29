class CreateHomeProjects < ActiveRecord::Migration
  def change
    create_table :home_projects do |t|
      t.string     :name
      t.text       :language
      t.text       :objective
      t.text       :description
      t.text       :images, array: true, default: [], null: false
      t.text       :github_link
      t.text       :live_link

      t.timestamps
    end
  end
end
