#Bypass mass-assignment
Blog::Entry.attr_accessible   :title, :body
Blog::Comment.attr_accessible :author_name, :body
Home::Project.attr_accessible :name, :language, :description, :objective,  :pictures, :github_link, :live_link


require 'csv'

if Rails.env.production?
  blog_entries_folder = Dir[Rails.root.to_s +  '/public/assets/'   + 'blog/entries/*']
else
  blog_entries_folder = Dir[Rails.root.to_s + '/app/assets/files/' + 'blog/entries/*']
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

if Rails.env.production?
  home_projects_info = Dir[Rails.root.to_s + '/public/assets/' + 'home/projects/projects_info*']
else
  home_projects_info = Dir[Rails.root.to_s + '/app/assets/files/' + 'home/projects/projects_info*']
end

projects_to_create = YAML.load_file(home_projects_info.last)

projects_to_create.each do |proj|
  project = Home::Project.create(proj.symbolize_keys)
end



Blog::Entry.destroy_all
Blog::Comment.destroy_all
Home::Project.destroy_all
