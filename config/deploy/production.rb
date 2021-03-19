server "deploy.elmedievo.org", :user => "deploy", :roles => "app", :primary => true

set :ssh_options, {
    keys: %w(C:/Users/BGM/.ssh/elmedievo),
    auth_methods: %w(publickey),
    forward_agent: true
}
