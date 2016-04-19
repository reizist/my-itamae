package 'http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm' do
  not_if 'rpm -q nginx-release-centos-6-0.el6.ngx.noarch'
end

package 'nginx' do
  version "#{node[:nginx][:version]}"
end

service 'nginx' do
  action [:enable, :start]
end
