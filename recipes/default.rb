package "curl"

execute "install nvm" do
  user "root"
  command "curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh"
  action :run
end

execute "install nodejs" do
  user "root"
  command "source /root/.bash_profile"
  command "nvm install #{node.nvm.nodejs_version}"
  action :run
end

execute "use nodejs" do
  user "root"
  command "source /root/.bash_profile"
  command "nvm use #{node.nvm.nodejs_version}"
  action :run
end
