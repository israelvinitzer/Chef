#My first recipe
package 'apache2' do
  case node['platform']
  when 'centos', 'redhat', 'fedora', 'suse'
    package_name 'httpd'
  when 'debian', 'ubuntu'
    package_name 'apache2'
  when 'arch'
    package_name 'apache'
  end
  action :install
end
