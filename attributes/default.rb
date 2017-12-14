default['efs']['rsize'] = 1_048_576
default['efs']['wsize'] = 1_048_576
default['efs']['behavior'] = 'hard'
default['efs']['timeout'] = 600
default['efs']['retrans'] = 2
default['efs']['mounts'] = {}
default['efs']['remove_unspecified_mounts'] = false

default['efs']['nfs-package'] = case node['platform']
                                when 'ubuntu', 'debian'
                                  'nfs-common'
                                when 'redhat', 'amazon', 'oracle'
                                  'nfs-utils'
                                when 'suse'
                                  'yast2-nfs-common'
                                end
