
#<> The location of tools.jar on the liberty servers, this is needed to generate plugin-cfg.xml. As an alternative you can put a copy of tools.jar into the DMZIHSLiberty/files/defualt directory and leave this peramater as nil. 
default[:Robin_Config][:backEnd][:java][:toolsPath] = nil

#<> How the liberty servers should search for the front end IBM HTTP Server. This must be set on the back end. TODO, examples would be good here
default[:Robin_Config]["backEnd"]["findGateway"]["pattern"] = nil
default[:Robin_Config]["backEnd"]["findGateway"]["networkInterface"] = "eth0"


#<> The back end liberty servers require the ability to SSH to the front end. !Warning, this recipy can use SSH usernames and passwords, this is NOT recommended. 

default[:Robin_Config][:backEnd][:SSH][:username] = nil
default[:Robin_Config][:backEnd][:SSH][:password] = nil
default[:Robin_Config][:backEnd][:SSH][:supressUnkownHostsWarning] = "true"

default[:Robin_Config][:backEnd][:SSH][:override] = nil # if not nil, a custom SSH string will be used.


