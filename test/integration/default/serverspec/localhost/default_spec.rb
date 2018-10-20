require 'spec_helper'

describe 'docker' do

  describe file('/usr/local/bin/docker-compose') do
    it { should exist }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

end
