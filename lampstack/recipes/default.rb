#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
begin
execute "update-upgrade" do
  command "apt-get update -y"
  action :run
end

include_recipe 'lampstack::apache2'
include_recipe 'lampstack::mysql'
include_recipe 'lampstack::php'
end


