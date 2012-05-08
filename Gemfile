source :rubygems

gem 'rails', '~> 3.2'

# Authentication & Authorization
gem 'omniauth-twitter'

# Views & client-side js
gem 'slim'
gem 'jquery-rails'

# File attachments
gem 'paperclip'

# Application server
gem 'thin'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'

  # CSS framework
  gem 'twitter-bootstrap-rails'
end

group :development do
  gem 'heroku'
  gem 'sqlite3'
end

group :production do
  gem 'bson_ext' # C extensions for the MongoDB Ruby driver
  gem 'pg'
end
