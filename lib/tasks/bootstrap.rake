namespace :bootstrap do
  desc "Install latest twitter bootstrap assets into vendor/assets"
  task :update do
    %x[
      cd #{Rails.root}/tmp
      wget http://twitter.github.com/bootstrap/assets/bootstrap.zip
      unzip bootstrap.zip
      cp -r bootstrap/css/* ../vendor/assets/stylesheets
      cp -r bootstrap/img/* ../vendor/assets/images
      cp -r bootstrap/js/* ../vendor/assets/javascripts
      rm -r bootstrap.zip bootstrap
    ]
  end
end
