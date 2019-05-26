title "Geth package installation"

describe user("geth") do
  it { should exist }
end

describe group("geth") do
  it { should exist }
end

describe package('ethereum') do
  it { should be_installed }
end

describe command('which geth') do
  its('exit_status') { should eq 0 }
end

describe command('geth version') do
  its('exit_status') { should eq 0 }
end