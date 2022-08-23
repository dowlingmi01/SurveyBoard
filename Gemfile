source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

gem 'better_errors', '~> 2.9', '>= 2.9.1' #for debugging
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1' #for bootstrap styling/framework
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'
gem 'simple_form', '~> 5.1' # for form
gem 'devise', '~> 4.8', '>= 4.8.1' #for authentication
gem 'pundit', '~> 2.2' #for authorization
gem 'friendly_id', '~> 5.4', '>= 5.4.2' #for search engine optimization
gem 'carrierwave', '~> 2.2', '>= 2.2.2' #for image upload
# gem 'fog', '~> 2.2' #for cloud upload of images
gem 'mini_magick', '~> 4.11' #carrierwave dependent
gem 'searchkick', '~> 5.0', '>= 5.0.4' #for search function
gem 'will_paginate', '~> 3.3', '>= 3.3.1' #for pagination
gem 'bootstrap-will_paginate', '~> 1.0' #for bootstrap-style pagination
gem 'elasticsearch'
gem 'kaminari', '~> 1.2', '>= 1.2.2'

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
