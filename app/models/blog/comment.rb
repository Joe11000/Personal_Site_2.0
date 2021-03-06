class Blog::Comment < ActiveRecord::Base
  belongs_to :entry, class_name: "Blog::Entry", foreign_key: :blog_entries_id

  accepts_nested_attributes_for(:entry)

  default_scope { order("created_at ASC") }
end
