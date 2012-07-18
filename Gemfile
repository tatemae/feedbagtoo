# Clean up if needed
# rm -rf ~/.bundle/ ~/.gem/; rm -rf $GEM_HOME/bundler/ $GEM_HOME/cache/bundler/; rm -rf .bundle/; rm -rf vendor/cache/; rm -rf Gemfile.lock

source "http://rubygems.org"


# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development, :test do
  gem 'growl'
  gem "rdoc", "~> 3.12"
  gem "bundler", ">=1.0.0"
  gem "jeweler", "~> 1.8.3"
  gem "active_support"
  gem "mocha"
  gem "hpricot"
  if RUBY_VERSION < '1.9'
    gem "ruby-debug"
  else
    gem 'debugger', '~> 1.1.4'
  end
end