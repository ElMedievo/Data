lock "~> 3.16.0"

require 'capistrano/bundler'
require 'rvm1/capistrano3'

set :application, "ElMedievo"
set :repo_url, "git@github.com:ElMedievo/Data.git"
set :branch, "master"
set :user, "deploy"
set :stages, %w(production)
set :deploy_to, "/home/deploy/data"
set :linked_dirs, %w(.bundle)
set :pty, true
set :rvm1_ruby_version, "2.6.6"

namespace :app do
  task :update_rvm_key do
    execute :gpg, "--keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
  end
end

before "rvm1:install:rvm", "app:update_rvm_key"
