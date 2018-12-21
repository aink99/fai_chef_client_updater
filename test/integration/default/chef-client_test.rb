describe command('chef-client') do
  it { should exist }
end

describe command('chef-client -v') do
   its('stdout') { should match (/14/) }
end
