require 'spec_helper'

describe command('node -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should eq "v0.12.9\n" }
end

describe command('npm -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should eq "2.14.9\n" }
end
