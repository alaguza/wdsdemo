#
# Cookbook Name:: wds-play
# Recipe:: default
#
# Copyright 2016, Artur Laguza
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{node['wds-play']['play_path']}/#{node['wds-play']['play_ver']}.zip" do
  source "#{node['wds-play']['play_source']}/#{node['wds-play']['play_ver']}.zip"
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

zipfile "#{node['wds-play']['play_path']}/#{node['wds-play']['play_ver']}.zip" do
  into "#{node['wds-play']['play_path']}"
end


