require File.expand_path('../support/helpers', __FILE__)

describe 'rsync::default' do
  
  it 'installs rsync' do
    package('rsync').must_be_installed
  end

end
