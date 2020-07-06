require 'serverspec'
require 'net/ssh'

set :backend, :ssh

set :host, ENV['TARGET_IP']
set :ssh_options, :user => 'ec2-user', :keys => ['~/.ssh/id_rsa']
set :require_pty, true

# Disable sudo
# set :disable_sudo, true


# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C'

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
