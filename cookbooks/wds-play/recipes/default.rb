#
# Cookbook Name:: wds-play
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


template '#{node['wds-play']['runscript_path']}/play-run.sh' do
  source 'play-run.sh.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

file '/opt/install/play/#{node['wds-play']['play_ver']}' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end
