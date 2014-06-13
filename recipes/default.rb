package "curl"

execute "install nodejs" do
  user "root"
  command "curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh"
  command "source /root/.bash_profile"
  command "nvm install #{node.nvm.nodejs_version}"
  command "nvm use #{node.nvm.nodejs_version}"
  action :run
end
