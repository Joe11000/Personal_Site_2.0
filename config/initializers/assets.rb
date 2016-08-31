# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.1'

Rails.application.config.assets.precompile += %w( blog/blog_stylesheet.css blog/comments.js blog/entries.js)
Rails.application.config.assets.precompile += %w( home/homes.css home/homes.js )
Rails.application.config.assets.precompile += %w( home/projects.css )
Rails.application.config.assets.precompile += %w( resume/resume.css resume/resume.js )
Rails.application.config.assets.precompile += %w(
                                                  ar.css
                                                  ar/awe-loader-min.js
                                                  ar/awe-loader.js
                                                  ar/awe-standard.js
                                                  ar/awe-standard-dependencies.js
                                                  ar/awe-standard-object_clicked.js
                                                  ar/awe-standard-window_resized.js
                                                  ar/awe-v8.js
                                                  ar/marker_ar/awe-jsartoolkit-dependencies.js
                                                  ar/marker_ar/awe.marker_ar.js
                                                  ar/ar_page.js
                                                )




# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
