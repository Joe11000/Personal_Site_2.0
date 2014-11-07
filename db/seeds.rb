#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :objective,  :pictures, :github_link, :live_link


require 'csv'

if Rails.env.development?
  blog_entries_folder = Dir[Rails.root.to_s + '/app/assets/files/' + 'blog/entries/*']
elsif Rails.env.production?
  blog_entries_folder = Dir[Rails.root.to_s +  '/public/assets/'   + 'blog/entries/*']
end


blog_entries_folder.each do |file|
  title = ""
  body = ""
  line_counter = 0

  File.open(file, "r") do |f|
    f.each_line do |line|
      line_counter += 1
      if line_counter == 1
        title = line.strip
      else
        body += line
      end
    end
  end
  Blog::Entry.create(title: title, body: body)
end


require 'yaml'

if Rails.env.development?
  home_projects_info = Dir[Rails.root.to_s + '/app/assets/files/' + 'home/projects/projects_info*']
elsif Rails.env.production?
  home_projects_info = Dir[Rails.root.to_s + '/public/assets/' +    'home/projects/projects_info*']
end


projects_to_create = YAML.load_file(home_projects_info.first)

projects_to_create.each do |proj|
  project = Home::Project.create(proj.symbolize_keys)
end






# FAKER SEED METHOD

# def create_blog_entries_with_comments(num_entries, num_comments_per_entry)
#   num_entries.times do |entry_num|
#     entry = Blog::Entry.create(title: "Entry_#{entry_num}", body: "#{100 - (entry_num)} bottles of ginger beer\n" * 50)

#     num_comments_per_entry.times do |comment_num|
#       Blog::Comment.create(author_name: "author_#{comment_num}", body: "I am the ##{comment_num} nerd\n" * 4)
#     end
#   end
# end



# def create_projects(languages_arr, num_projects_to_create)
#   languages_arr.each_with_index do |lang, lang_index |
#     num_projects_to_create.times do | proj_index |
#       index = proj_index + (lang_index.size * lang_index)
#       project = Home::Project.create(name: "Beach #{index}", language: lang, description: "Beach Pictures Here", objective: "I set out to make the crocodiles into ducks on the BEACH")
#       project.update(pictures: [ "http://localhost:3000/assets/beach/1.jpg", "http://localhost:3000/assets/beach/2.jpg" ]);
#     end

#       project = Home::Project.create(name: "Printer back", language: lang, description: "Printer Background Desc", objective: "Printer and Background")
#       project.update(pictures: [ "http://localhost:3000/assets/printer.png", "http://localhost:3000/assets/background_4.jpg" ]);
#   end
# end

# Pathname.new(File.expand_path('../app/assets/images/projects', __FILE__))


# create_blog_entries_with_comments(3, 3);
# create_projects(%w[ Cpp Java Javascript Rails Ruby  ], 3)







# IF i WANT TO USE CSV IN THE FUTURE

# CSV.open("myfile.csv", "w") do |csv|
#   csv << ["row", "of", "CSV", "data"]
#   csv << ["another", "row"]
#   # ...
# end




