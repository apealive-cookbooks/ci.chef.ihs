require 'minitest/spec'

describe 'recipe::robin_test::install' do


  it "runtime is installed" do
    directory("#{node[:wlp][:base_dir]}/wlp").must_exist
  end

  it "extended is not installed" do
    directory("#{node[:wlp][:base_dir]}/wlp/bin/jaxws").wont_exist
  end

  it "extras is installed" do
    directory("#{node[:wlp][:archive][:extras][:base_dir]}/wlp").must_exist
  end

  it "server is created" do
    file("#{node[:wlp][:user_dir]}/servers/testone/server.xml").must_exist
  end

  it "boots on startup" do
    service("testone").must_be_enabled
  end

  it "runs as a daemon" do
    # Work-around as described in https://github.com/calavera/minitest-chef-handler/issues/22
    s = service("testone")
    s.supports([:status])
    s.run_context = run_context
    ::Chef::Platform.provider_for_resource(s).load_current_resource.must_be_running
  end


  it "server is created" do
    file("#{node[:wlp][:user_dir]}/servers/testtwo/server.xml").must_exist
  end

  it "boots on startup" do
    service("testtwo").must_be_enabled
  end

  it "runs as a daemon" do
    # Work-around as described in https://github.com/calavera/minitest-chef-handler/issues/22
    s = service("testtwo")
    s.supports([:status])
    s.run_context = run_context
    ::Chef::Platform.provider_for_resource(s).load_current_resource.must_be_running
  end

  it "runtime is installed" do
    directory("#{default[:ihs][:paths][:install]}").must_exist
  end

  it "server is created" do
    file("#{default[:ihs][:paths][:install]}/conf/httpd.conf").must_exist
  end

  it "boots on startup" do
    service("testone").must_be_enabled
  end

  it "runs as a daemon" do
    # Work-around as described in https://github.com/calavera/minitest-chef-handler/issues/22
    s = service("testone")
    s.supports([:status])
    s.run_context = run_context
    ::Chef::Platform.provider_for_resource(s).load_current_resource.must_be_running
  end


  
#in my experience it suceeds twice then fails twice - since I have been bad and made round robin urls that only work on one server
bash "download from server one through the proxy" do
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  wget localhost/test/testone.jsp
  EOH
end


bash "download from server two through the proxy" do
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  wget localhost/test/testtwo.jsp
  EOH
end 

  it "runtime is installed" do
    file("/tmp/testone.jsp").must_exist
  end

  it "runtime is installed" do
    file("/tmp/testtwo.jsp").must_exist
  end

end
