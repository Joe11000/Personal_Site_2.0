#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :images

1.upto(4) do |num|
  entry = Blog::Entry.create(title: "Entry_#{num}", body: "#{100 - (num)} bottles of ginger beer\n" * 50)
  entry.comments.create(author_name: "author_#{num}", body: "I am the ##{num} nerd\n" * 4)
end


%w[ C++ Java Javascript Rails Ruby  ].each_with_index do |lang, index|
  project = Home::Project.create(name: "App #{index}", language: lang, description: "It does what I made it do")
  project.update(images: [ "http://localhost:3000/assets/Beach/#{index}1.jpg", "http://localhost:3000/assets/Beach/#{index}2.jpg" ]);
end
