package "curl"

bash "install nodejs" do
  user "root"
  cwd "/root"
  code <<-EOH
  curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
  source /root/.bash_profile
  nvm install #{node.nvm.nodejs_version}
  nvm use #{node.nvm.nodejs_version}
  EOH
end
