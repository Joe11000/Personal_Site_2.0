class Blog::Entry < ActiveRecord::Base
    has_many :comments, class_name: "Blog::Comment",
                        foreign_key: :blog_entries_id

    default_scope { order("created_at ASC") }
    # scope :latest_entry, ->     { where("blog_entries.id = ?", Blog::Entry.size ) }
    # scope :select_entry, ->(id) { where("blog_entries.id = ?", id ) }

end
