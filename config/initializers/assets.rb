# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.1'

Rails.application.config.assets.precompile += %w( blog/blog_stylesheet.css blog/comments.js blog/entries.js)
Rails.application.config.assets.precompile += %w( homes/homes.css homes/homes.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
