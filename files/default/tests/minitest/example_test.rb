require File.expand_path('../support/helpers', __FILE__)

describe 'rsync::lwrp_test' do
  
  it 'starts rsyncd' do 
    rsyncd_service.must_be_running
  end
  
  it 'enables rsyncd' do 
    rsyncd_service.must_be_enabled
  end

  it 'creates config file' do 
    rsyncd_config.must_exist
  end

  it 'listens on port 9999' do
    rsyncd_configured_ports.must_include(9999)
  end

  it 'serves test files' do
    serving? "lwrp"
  end

  it 'serves test-9999 files' do
    serving? "test-9999"
  end

end
