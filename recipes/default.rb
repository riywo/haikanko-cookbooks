#
# Cookbook Name:: haikanko
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"
include_recipe "git"
include_recipe "build-essential"

execute "build-dep rrdtool" do
  command "apt-get build-dep rrdtool -y"
end

package "ruby1.9.3"
gem_package "bundler"

include_recipe "perl::default"
cpan_module "GrowthForecast"
cpan_module "App::Ikachan"

include_recipe "mongodb::default"
include_recipe "postfix::default"

git "/opt/haikanko" do
  repository "https://github.com/sonots/haikanko.git"
  reference "master"
  action :sync
end

