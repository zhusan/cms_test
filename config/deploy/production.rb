set :stage, :production
set :branch, 'spree-multi-domain'
set :password, ask('password', nil)

server '192.168.1.188', user: "zs", port: 22, password: fetch(:password), roles: %w{web app db}


set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:application)}"

# dont try and infer something as important as environment from
# stage name.
set :rails_env, :production

# number of unicorn workers, this will be reflected in
# the unicorn.rb and the monit configs
#set :unicorn_worker_count, 5

# whether we're using ssl or not, used for building nginx
# config file
set :enable_ssl, false