require 'spec_helper'

describe yumrepo('epel') do
  it { should exist }
  it { should be_enabled }
end

describe yumrepo('remi') do
  it { should exist }
  it { should be_enabled }
end

describe yumrepo('remi-php56') do
  it { should exist }
  it { should_not be_enabled }
end
