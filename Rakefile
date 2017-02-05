permissions = "--chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r"

namespace :middleman do
  desc "Middleman server"
  task :server do
    sh "middleman server"
  end

  desc "Middleman build"
  task :build do
    sh "BUILD=true middleman build"
  end
end

namespace :development do
  desc "Build modernizr.js"
  task :modernizr do
    sh "./node_modules/.bin/modernizr -c modernizr-config.json -d source/javascripts/modernizr.js"
  end
end

namespace :staging do
  desc "Deploy to staging"
  task :deploy do
    Rake::Task["middleman:build"].execute
    sh "rsync -rDv build/ nyc3-01.someurl.com:/srv/staging/ --delete #{permissions}"
  end
end

namespace :production do
  desc "Deploy to production"
  task :deploy do
    Rake::Task["middleman:build"].execute
    sh "rsync -rDv build/ nyc3-01.someurl.com:/srv/production/ --delete #{permissions}"
  end
end
