#<> Where to find the front end IBM HTTP Server. If left to nil then this will fall back to [:ihs][:paths][:install]. If you wish to run configihs One of the two variables __must__ be set. 
default[:Robin_Config][:frontEnd][:IHS][:baseDir] = nil

#<> Where to find the Web Server Plug-ins for IBM WebSphere Application Server V8.5. If left to nil then this will fall back to [:ihs][:paths][:plugins]. If you wish to run configihs one of the two variables __must__ be set. 
default[:Robin_Config][:frontEnd][:IHS][:pluginBaseDir] = nil

#<> The location of tools.jar on the liberty servers, this is needed to generate plugin-cfg.xml. As an alternative you can put a copy of tools.jar into the DMZIHSLiberty/files/defualt directory and leave this peramater as nil. 
default[:Robin_Config][:backEnd][:java][:toolsPath] = nil

#<> How the liberty servers should search for the front end IBM HTTP Server. This must be set on the back end. TODO, examples would be good here
default[:Robin_Config]["backEnd"]["findGateway"]["pattern"] = nil
default[:Robin_Config]["backEnd"]["findGateway"]["networkInterface"] = "eth0"

#<> The reponse file and optionally a secure storage file for install manager to install IHS

default[:Robin_Config][:frontEnd][:IHS][:install][:responseFile] = nil
default[:Robin_Config][:frontEnd][:IHS][:install][:secureStorageFile] = nil

#<> The back end liberty servers require the ability to SSH to the front end. !Warning, this recipy can use SSH usernames and passwords, this is NOT recommended. 

default[:Robin_Config][:backEnd][:SSH][:username] = nil
default[:Robin_Config][:backEnd][:SSH][:password] = nil
default[:Robin_Config][:backEnd][:SSH][:supressUnkownHostsWarning] = "true"

default[:Robin_Config][:backEnd][:SSH][:override] = nil # if not nil, a custom SSH string will be used.


#<> Peramaters to override settings in the final config-xml these should be set on the front end server
default[:Robin_Config][:frontEnd][:plugincfg][:logPath] = nil
default[:Robin_Config][:frontEnd][:plugincfg][:hostname] = "*"
default[:Robin_Config][:frontEnd][:plugincfg][:ports] = ["80", "443"]

