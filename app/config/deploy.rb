set :application, "CapifonyTest"
set :domain,      "ubuntu@62.4.23.212"
set :deploy_to,   "/var/www/captest-deploy"
set :app_path,    "app"

#set :repository,  "#{domain}:/var/www/captest-repo"
set :repository,  "git@github.com:4ian/symfony-standard.git"
set :scm,         :git
set :use_sudo, 	  false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :update_vendors, false
set :use_composer, true

set :model_manager, "doctrine"
# Or: `propel`

ssh_options[:forward_agent] = true
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa_cap")]

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL