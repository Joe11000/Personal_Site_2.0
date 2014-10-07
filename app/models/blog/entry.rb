class Blog::Entry < ActiveRecord::Base
    has_many :comments, class_name: "Blog::Comment",
                        foreign_key: :blog_entries_id
end
