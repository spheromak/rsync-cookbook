require File.expand_path('../support/helpers', __FILE__)

describe 'rsync::server' do
  
  it 'installs rsync' do
    package('rsync').must_be_installed
  end

  it 'creates an init script' do
    file("/etc/init.d/rsyncd").must_exist
  end

  it 'defines the service' do 
    rsyncd_service.must_exist
  end
end

