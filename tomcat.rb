package "tomcat"

script "install_program" do
  interpreter "bash"
  cwd "/root/chef-repo"
  code <<-EOH
    wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
    cp jenkins.war /usr/share/tomcat/webapps
  EOH
end

service "tomcat" do
action:start
end
