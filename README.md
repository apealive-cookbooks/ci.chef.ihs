# Description

The __ihs__ cookbook uses IBM's Install Manager to install IBM HTTP Server.

## Basic Use

The __ihs__ cookbook only requires an IBM repository that contains IHS. The attribute [:ihs][:install][:repositoryLocation] __must__ be set to he location of your repository.

If you do not know where to find a repository, you can start at this page: http://pic.dhe.ibm.com/infocenter/wasinfo/v8r5/index.jsp?topic=%2Fcom.ibm.websphere.installation.express.doc%2Fae%2Fcins_repositories.html


You may also need to set [:ihs][:install][:secureStorageFile] to the location of your secure storage file in order to access a repository, and if your secure storage file is password protected you will also need to point [:ihs][:install][:masterPasswordFile] to your master password file.

This cookbook also supports keyfiles, however keyfiles are depreciated and we do not recommend their use.

# Requirements

## Platform:

* Linux

## Cookbooks:

* iim

# Attributes

* `node[:ihs][:paths][:shared]` - The path to the shared directory for IBM products. Defaults to `/opt/IBM/IMShared`.
* `node[:ihs][:paths][:install]` - The path where IHS should be installed. Defaults to `/opt/IBM/HTTPServer`.
* `node[:ihs][:paths][:eclipse]` - The path where IHS internal eclipse tools should be installed. Defaults to `node[:ihs][:paths][:install]`.
* `node[:ihs][:install][:repositoryLocation]` - The location of the repository to download IHS from, this attribute is REQUIRED. Defaults to `nil`.
* `node[:ihs][:install][:masterPasswordFile]` - The location of the master password file IIM should use to access the secure storage file, this attribute is optional. Defaults to `nil`.
* `node[:ihs][:install][:secureStorageFile]` - The location of the secure storage file IIM should use to access the repoistory, this attribute is optional. Defaults to `nil`.
* `node[:ihs][:install][:keyFile]` - The location of the key file IIM should use to access the repoistory, this attribute is optional. Defaults to `nil`.
* `node[:ihs][:install][:keyResponseFile]` - The location of the response file IIM should use to install the key file, this attribute is optional. Defaults to `nil`.

# Recipes

* [ihs::default](#ihsdefault)

## ihs::default

This recipe calls IIM and uses it to install IHS

# License and Maintainer

Maintainer:: IBM (<>)

License:: Apache 2.0
