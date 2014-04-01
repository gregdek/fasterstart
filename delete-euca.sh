virsh list | grep 'running$' | sed -re 's/^\\s*[0-9-]+\\s+(.*?[^ ])\\s+running$/\"\\1\"/' | xargs -r -n 1 -P 1 virsh destroy
yum -y remove euca2ools python-eucadmin
yum -y remove eucayptus*
rm -rf ~eucalyptus
rm /etc/yum.repos.d/euca2ools-release.repo
rm /etc/yum.repos.d/eucalyptus-release.repo
rm -rf /etc/eucalyptus
rm -rf /etc/euca2ools
rm -rf /var/log/eucalyptus
rm -rf /var/run/eucalyptus
rm -rf /var/lib/eucalyptus
iscsiadm -m session -u
