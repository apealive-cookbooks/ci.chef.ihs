# Cookbook Name:: ihs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
require 'tempfile'

#TODO politely exit if node[:ihs][:install][:repositoryLocation] is nil

include_recipe "iim"

responseFile = Tempfile.new('response.xml')
responseFilePath = responseFile.path

directory "/opt/IBM" do
  group node[:im][:group]
  owner node[:im][:user]
  mode "0755"
  recursive true
end

template responseFilePath do
   source "install_response_file.xml.erb"
   action :create
   #all variables are set in the erb itself.
end    
    

iim_iim 'ihs' do 
   response_file responseFilePath
   master_password_file node[:ihs][:install][:masterPasswordFile] #all these default to null, and depending on your repositories security settings they might be able to remain that way. 
   secure_storage_file node[:ihs][:install][:secureStorageFile]
   key_file node[:ihs][:install][:keyFile]
   key_response_file node[:ihs][:install][:keyResponseFile]
   action :install
end

