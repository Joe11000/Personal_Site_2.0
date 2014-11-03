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


  lang = "Javascript"
  project = Home::Project.create(name: "No Spoilers",
                                 language:   lang,
                                 description: "This code removes spoilers from the video.nhl.com page + tells page to ignores live game updates as they come in. Paste JS in console after page loads.",
                                 objective:   "Let me just watch highlights without RUINING the final score in advance!!!",
                                 github_link: "https://github.com/Joe11000/No_Spoilers",
                                 live_link:   "")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/No_Spoilers/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/No_Spoilers/2.png" ]);


  project = Home::Project.create(name: "Unbeatable Tic-Tac-Toe",
                                 language:   lang,
                                 objective:   "To create an unbeatable Tic Tac Toe game",
                                 description: "A statically served Unbeatable Tic-Tac-Toe game. UI is HTML/CSS and powered by Javascript with the Jasmine testing framework.",
                                 github_link: "https://github.com/Joe11000/Tic_Tac_Toe_Unbeatable",
                                 live_link:   "http://www.joe-tic-tac-toe.s3-website-us-east-1.amazonaws.com/")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/Tic_Tac_Toe/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Tic_Tac_Toe/2.png" ]);



  lang = "Ruby"

  project = Home::Project.create(name: "ASCII Racer",
                                 language:   lang,
                                 objective:   "Create a racing game with ASCII characters.",
                                 description: "Using Ruby create a terminal based racing game with ASCII characters to watch. Just Because.",
                                 github_link: "https://github.com/Joe11000/ASCII_Racer",
                                 live_link:   "")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/Racer/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Racer/2.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Racer/3.png" ]);

  project = Home::Project.create(name: "Boggle",
                                 language:   lang,
                                 objective:   "Create a Boggle Game",
                                 description: "A Boggle Game run in the Terminal. Coded in Ruby. The game only accepts valid words from the '/usr/share/dict/words' file.",
                                 github_link: "https://github.com/Joe11000/Boggle",
                                 live_link:   "")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/Boggle/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Boggle/2.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Boggle/3.png"  ]);



  lang = "Sinatra"

  project = Home::Project.create(name: "Survey Gorilla",
                                 language:   lang,
                                 objective:   "To create a site to allow the users to create and take surveys.",
                                 description: "This was a Dev BootCamp weekend project that was assigned to be completed in a 4 man team.",
                                 github_link: "https://github.com/Joe11000/SurveyGorilla",
                                 live_link:   "https://thegorillaonfire.herokuapp.com")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/Survey_Gorilla/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Survey_Gorilla/2.png",
                             "http://localhost:3000/assets/Projects/#{lang}/Survey_Gorilla/3.png" ]);


  lang = "Rails"


  project = Home::Project.create(name: "Park Bench Projects",
                                 language:   lang,
                                 objective:   "From pitch to completion, create a final project 8 days to present to potential employers at Dev Bootcamp.",
                                 description: "Our final project",
                                 github_link: "https://github.com/Joe11000/pbp",
                                 live_link:   "")
  project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}/pbp/1.png",
                             "http://localhost:3000/assets/Projects/#{lang}/pbp/2.png" ]);

  # project = Home::Project.create(name: "Blog",
  #                                language:   lang,
  #                                objective:   "Create a programming blog",
  #                                description: "",
  #                                github_link: "",
  #                                live_link:   "")
  # project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}//1.png",
  #                            "http://localhost:3000/assets/Projects/#{lang}//2.png" ]);





  # project = Home::Project.create(name: "",
  #                                language:   lang,
  #                                objective:   "",
  #                                description: "",
  #                                github_link: "",
  #                                live_link:   "")
  # project.update(pictures: [ "http://localhost:3000/assets/Projects/#{lang}//1.png",
  #                            "http://localhost:3000/assets/Projects/#{lang}//2.png" ]);




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


