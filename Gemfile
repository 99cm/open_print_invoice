source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

branch = ENV.fetch('OPEN_BRANCH', 'master')
gem 'open', github: '99cm/open'
gem 'open_auth_devise', github: '99cm/open_auth_devise'
gem 'rails-controller-testing'

gemspec