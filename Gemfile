# frozen_string_literal: true

source "https://rubygems.org"

gemspec

group :test do
  gem "minitest", "~> 5.0"
  gem "rake", "~> 13.0"
end

eco_root = __dir__
eco_root = File.dirname(eco_root) until File.exist?("#{eco_root}/Gemfile.eco")
eval_gemfile "#{eco_root}/Gemfile.eco"

eco_gem "engine-design-system"
eco_gem "library-heartbeat"
eco_gem "library-platform"
