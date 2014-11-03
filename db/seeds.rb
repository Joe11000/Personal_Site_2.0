#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :objective,  :pictures

def create_blog_entries_with_comments(num_entries, num_comments_per_entry)
  num_entries.times do |entry_num|
    entry = Blog::Entry.create(title: "Entry_#{entry_num}", body: "#{100 - (entry_num)} bottles of ginger beer\n" * 50)

    num_comments_per_entry.times do |comment_num|
      Blog::Comment.create(author_name: "author_#{comment_num}", body: "I am the ##{comment_num} nerd\n" * 4)
    end
  end
end

create_blog_entries_with_comments(3, 3);

  project_name = "No Spoilers"
  lang = "Javascript"
  project = Home::Project.create(name: "No Spoilers",
                                 language: lang,
                                 description: "This code removes spoilers from the video.nhl.com page + tells page to ignores live game updates as they come in. Paste JS in console after page loads.",
                                 objective: "Let me just watch highlights without RUINING the final score in advance!!!",
                                 github_link: "https://github.com/Joe11000/No_Spoilers",
                                 live_link: "")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/#{project_name}/1.jpg", "http://localhost:3000/assets/Beach/2.jpg" ]);


github-link = https://github.com/Joe11000/No_Spoilers

title = No Spoilers

objective =

description =




# def create_projects(languages_arr, num_projects_to_create)
#   languages_arr.each_with_index do |lang, lang_index |
#     num_projects_to_create.times do | proj_index |
#       index = proj_index + (lang_index.size * lang_index)
#       project = Home::Project.create(name: "Beach #{index}", language: lang, description: "Beach Pictures Here", objective: "I set out to make the crocodiles into ducks on the BEACH")
#       project.update(pictures: [ "http://localhost:3000/assets/Beach/1.jpg", "http://localhost:3000/assets/Beach/2.jpg" ]);
#     end

#       project = Home::Project.create(name: "Printer back", language: lang, description: "Printer Background Desc", objective: "Printer and Background")
#       project.update(pictures: [ "http://localhost:3000/assets/printer.png", "http://localhost:3000/assets/background_4.jpg" ]);
#   end
# end

# Pathname.new(File.expand_path('../app/assets/images/Projects', __FILE__))




# create_projects(%w[ Cpp Java Javascript Rails Ruby  ], 3)

#       project = Home::Project.create(name: "Beach #{index}", language: lang, description: "Beach Pictures Here", objective: "I set out to make the crocodiles into ducks on the BEACH")


