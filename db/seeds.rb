#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :images

1.upto(4) do |num|
  e = Blog::Entry.create(title: "Entry_#{num}", body: "#{100 - (num)} bottles of ginger beer\n" * 50)
  e.comments.create(author_name: "author_#{num}", body: "I am the ##{num} nerd\n" * 4)
end


h = Home::Project.create(name: "Javascript Racer", language: "Javascript", description: "It races across the screen")
h.update(images: [ "path/to/image/1.png", "path/to/image/2.jpg" ]);
