class Blog::Comment < ActiveRecord::Base
  belongs_to :entry, class_name: "Blog::Entry", foreign_key: :blog_entries_id
end
