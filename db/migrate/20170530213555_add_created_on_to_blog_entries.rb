class AddCreatedOnToBlogEntries < ActiveRecord::Migration
  def change
    add_column :blog_entries, :created_on, :datetime, default: Time.now
  end
end
