set :source, "source"
set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :fonts_dir,  "fonts"
sprockets.append_path File.join "#{root}", "vendor/bower_components"

configure :development do
  activate :livereload, { :host => "127.0.0.1" }
end

configure :build do
  set :debug_assets, true
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash, :ignore => ["bower_components"]
end
