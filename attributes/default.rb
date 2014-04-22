#<> These three attributes define the paths IHS will use
default[:ihs][:paths][:shared] = "/opt/IBM/IMShared"
default[:ihs][:paths][:install] = "/opt/IBM/HTTPServer"
default[:ihs][:paths][:eclipse] = node[:ihs][:paths][:install]

#<> These attributes are peramiters for the installer. repositoryLocation is required, the others are optional depending upon the security settings of the repository. 
default[:ihs][:install][:repositoryLocation] = nil
default[:ihs][:install][:masterPasswordFile] = nil
default[:ihs][:install][:secureStorageFile] = nil
default[:ihs][:install][:keyFile] = nil
default[:ihs][:install][:keyResponseFile] = nil
