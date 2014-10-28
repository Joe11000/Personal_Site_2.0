#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :objective,  :images

def create_blog_entries_with_comments(num_entries, num_comments_per_entry)
  num_entries.times do |entry_num|
    entry = Blog::Entry.create(title: "Entry_#{entry_num}", body: "#{100 - (entry_num)} bottles of ginger beer\n" * 50)

    num_comments_per_entry.times do |comment_num|
      Blog::Comment.create(author_name: "author_#{comment_num}", body: "I am the ##{comment_num} nerd\n" * 4)
    end
  end
end

def create_languages_with_projects(languages_arr, num_projects_to_create)
  languages_arr.each_with_index do |lang, lang_index |
    num_projects_to_create.times do | proj_index |
      index = proj_index + (lang_index.size * lang_index)
      project = Home::Project.create(name: "App #{index}", language: lang, description: "I polymerized them into crocoducks", objective: "I set out to make the crocodiles into ducks")
      project.update(images: [ "http://localhost:3000/assets/Beach/1.jpg", "http://localhost:3000/assets/Beach/2.jpg" ]);
    end
      project = Home::Project.create(name: "APPAPPAPPAPP App", language: lang, description: "I polymerized them into crocoducks", objective: "I set out to make the crocodiles into ducks")
      project.update(images: [ "http://localhost:3000/assets/Beach/1.jpg", "http://localhost:3000/assets/Beach/2.jpg" ]);

      project = Home::Project.create(name: "APPAPPAPPAPPApp", language: lang, description: "I polymerized them into crocoducks", objective: "I set out to make the crocodiles into ducks")
      project.update(images: [ "http://localhost:3000/assets/Beach/1.jpg", "http://localhost:3000/assets/Beach/2.jpg" ]);


  end
end



create_blog_entries_with_comments(3, 3);

create_languages_with_projects(%w[ Cpp Java Javascript Rails Ruby  ], 3)

Home::Project.last.update(description: "This is all the things

  I want to do

    \num_comments_per_entry

    yup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewayup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewayup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewa
    yup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewayup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewayup yup fdsajklf;dhsalgkr;ae efhiwof;en wjaifove;wanhiovwaprv ewhrnvw;ahjrcaeinowcrhaewfioupch epuw9r hewuiprf ewhreiopwa rehwuiaoprv hewuiapr ewa")


# Name of project

# objective - WHat I wanted to solve, do, etc

# What my application does and how goal is accomplished
