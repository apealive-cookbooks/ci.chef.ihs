#<> The path to the shared directory for IBM products
default[:ihs][:paths][:shared] = "/opt/IBM/IMShared"
#<> The path where IHS should be installed
default[:ihs][:paths][:install] = "/opt/IBM/HTTPServer"
#<> The path where IHS internal eclipse tools should be installed
default[:ihs][:paths][:eclipse] = node[:ihs][:paths][:install]

#<> The location of the repository to download IHS from, this attribute is REQUIRED
default[:ihs][:install][:repositoryLocation] = nil
#<> The location of the master password file IIM should use to access the secure storage file, this attribute is optional
default[:ihs][:install][:masterPasswordFile] = nil
#<> The location of the secure storage file IIM should use to access the repoistory, this attribute is optional
default[:ihs][:install][:secureStorageFile] = nil
#<> The location of the key file IIM should use to access the repoistory, this attribute is optional
default[:ihs][:install][:keyFile] = nil
#<> The location of the response file IIM should use to install the key file, this attribute is optional
default[:ihs][:install][:keyResponseFile] = nil
