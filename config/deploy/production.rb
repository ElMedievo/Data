server "209.145.63.215", :user => "deploy", :roles => "app", :primary => true

set :ssh_options, {
    keys: %w(C:/Users/BGM/.ssh/elmedievo),
    auth_methods: %w(publickey),
    forward_agent: true
}
