# Copyright:: 2018, The Authors, All Rights Reserved.
chef_client_updater 'Install latest' do
  case node['os']
  when 'windows'
    post_install_action 'exec'
  else
    post_install_action 'kill'
  end
end
