# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'jekyll', '4.0.0'
# bundled theme, WIP: Update theme to use AMP
# gem 'huenited', '0.1.0', :path => "./huenited"
gem 'huenited', :path => "./jekyll-theme"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins
# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-sitemap', '1.4.0'
  gem 'jekyll-feed', '0.13.0'
  gem 'jekyll-seo-tag', '2.6.1'
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem 'tzinfo', '1.2.7'
  gem 'tzinfo-data', '1.2019.3'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '0.1.1', :install_if => Gem.win_platform?
