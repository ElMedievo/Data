# frozen_string_literal: true

lock '~> 3.17.1'

require 'capistrano/bundler'
require 'rvm1/capistrano3'

set :application, 'ElMedievo'
set :repo_url, 'git@github.com:ElMedievo/Data.git'
set :branch, 'master'
set :user, 'deploy'
set :stages, %w(production)
set :deploy_to, '/home/deploy/Data'
set :linked_files, %w(.console_history banned-ips.json banned-players.json version_history.json usercache.json whitelist.json)
set :linked_dirs, %w(.bundle world world_nether world_the_end plugins logs config cache libraries ops.json)
set :pty, true
set :rvm1_ruby_version, '2.7.3'

namespace :app do
  task :update_rvm_key do
    execute :gpg, '--keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3'
  end
end

before 'rvm1:install:rvm', 'app:update_rvm_key'
