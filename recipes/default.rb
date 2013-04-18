#
# Cookbook Name:: haikanko
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p327"
rbenv_gem "bundler" do
  ruby_version "1.9.3-p327"
end


