#Bypass mass-assignment
Blog::Entry.attr_accessible :title, :body
Blog::Comment.attr_accessible :author_name, :body


1.upto(4) do |num|
  e = Blog::Entry.create(title: "Entry_#{num}", body: "#{100 - (num)} bottles of ginger beer\n" * 50)
  e.comments.create(author_name: "author_#{num}", body: "I am the ##{num} nerd\n" * 4)
end

