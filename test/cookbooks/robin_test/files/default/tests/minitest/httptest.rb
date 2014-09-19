require 'minitest/spec'

describe 'ihs::robin_test::install' do

  
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
