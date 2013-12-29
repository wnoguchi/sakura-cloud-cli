#
# Cookbook Name:: sakura-cloud-cli
# Recipe:: default
#
# Copyright (C) 2013 Wataru Noguchi
# 
# All rights reserved
#

service "iptables" do
  supports :status => true, :restart => true, :reload => true
  action [ :disable, :stop ]
end

execute "devtools" do
  user "root"
  command 'yum -y groupinstall "Development Tools"'
  action :run
end

package "ruby" do
  action :install
end
