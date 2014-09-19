#
# (C) Copyright IBM Corporation 2013.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default["java"]["install_flavor"] = "ibm",
default["java"]["install_flavor"]["ibm"]["url"] = "file:///vagrant/ibm-java-i386-sdk-7.1-1.1.bin"
default["java"]["install_flavor"]["ibm"]["accept_ibm_download_terms"] = "true"
 
default["Robin_Config"]["backEnd"]["SSH"]["username"] = "vagrant"
default["Robin_Config"]["backEnd"]["SSH"]["password"] = "vagrant"

default["Robin_Config"]["backEnd"]["findGateway"]["pattern"] = "hostname:localhost",
default["Robin_Config"]["backEnd"]["findGateway"]["networkInterface"] = "eth0"

default["frontEnd"]["plugincfg"]["ports"] = ["80","443","9095"]

default["wlp"]["archive"]["accept_license"] = "true"
default["wlp"]["archive"]["base_url"] = "file:///vagrant/" #TODO, get this from the net


default["im"]["user"] = "root",
default["im"]["group"] = "root",
default["im"]["install_zip"]["file"] = "/vagrant/IBMIM_linux_x86.zip" #TODO, can this come from the net? Note, depends on enabling net insatlls 
default["im"]["ihs"]["install"]["repositoryLocation"] = "http://www.ibm.com/software/repositorymanager/V85WASIHSILAN", #TODO, can I get this without a password? I don't want to put my password file in github
default["im"]["ihs"]["install"]["secureStorageFile"] = "/vagrant/secure_storage"

