<!-- DO NOT EDIT. THIS FILE IS GENERATED BY THE MAKEFILE. -->
# Terraform variables
This document gives an overview of variables used in the AWS platform of the Tectonic SDK.

## Inputs

| Name | Description | Type | Default |
|------|-------------|:----:|:-----:|
| tectonic_admin_email | (internal) The e-mail address used to: 1. login as the admin user to the Tectonic Console. 2. generate DNS zones for some providers.<br><br>Note: This field MUST be in all lower-case e-mail address format and set manually prior to creating the cluster. | string | - |
| tectonic_admin_password | (internal) The admin user password to login to the Tectonic Console.<br><br>Note: This field MUST be set manually prior to creating the cluster. Backslashes and double quotes must also be escaped. | string | - |
| tectonic_autoscaling_group_extra_tags | (optional) Extra AWS tags to be applied to created autoscaling group resources. This is a list of maps having the keys `key`, `value` and `propagate_at_launch`.<br><br>Example: `[ { key = "foo", value = "bar", propagate_at_launch = true } ]` | list | `<list>` |
| tectonic_aws_assets_s3_bucket_name | (optional) Unique name under which the Amazon S3 bucket will be created. Bucket name must start with a lower case name and is limited to 63 characters. The Tectonic Installer uses the bucket to store tectonic assets and kubeconfig. If name is not provided the installer will construct the name using "tectonic_cluster_name", current AWS region and "tectonic_base_domain" | string | `` |
| tectonic_aws_config_version | (internal) This declares the version of the AWS configuration variables. It has no impact on generated assets but declares the version contract of the configuration. | string | `1.0` |
| tectonic_aws_etcd_ec2_type | Instance size for the etcd node(s). Example: `t2.medium`. Read the [etcd recommended hardware](https://coreos.com/etcd/docs/latest/op-guide/hardware.html) guide for best performance | string | `t2.medium` |
| tectonic_aws_etcd_extra_sg_ids | (optional) List of additional security group IDs for etcd nodes.<br><br>Example: `["sg-51530134", "sg-b253d7cc"]` | list | `<list>` |
| tectonic_aws_etcd_root_volume_iops | The amount of provisioned IOPS for the root block device of etcd nodes. Ignored if the volume type is not io1. | string | `100` |
| tectonic_aws_etcd_root_volume_size | The size of the volume in gigabytes for the root block device of etcd nodes. | string | `30` |
| tectonic_aws_etcd_root_volume_type | The type of volume for the root block device of etcd nodes. | string | `gp2` |
| tectonic_aws_external_master_subnet_ids | (optional) List of subnet IDs within an existing VPC to deploy master nodes into. Required to use an existing VPC and the list must match the AZ count.<br><br>Example: `["subnet-111111", "subnet-222222", "subnet-333333"]` | list | `<list>` |
| tectonic_aws_external_private_zone | (optional) If set, the given Route53 zone ID will be used as the internal (private) zone. This zone will be used to create etcd DNS records as well as internal API and internal Ingress records. If set, no additional private zone will be created.<br><br>Example: `"Z1ILINNUJGTAO1"` | string | `` |
| tectonic_aws_external_vpc_id | (optional) ID of an existing VPC to launch nodes into. If unset a new VPC is created.<br><br>Example: `vpc-123456` | string | `` |
| tectonic_aws_external_worker_subnet_ids | (optional) List of subnet IDs within an existing VPC to deploy worker nodes into. Required to use an existing VPC and the list must match the AZ count.<br><br>Example: `["subnet-111111", "subnet-222222", "subnet-333333"]` | list | `<list>` |
| tectonic_aws_extra_tags | (optional) Extra AWS tags to be applied to created resources. | map | `<map>` |
| tectonic_aws_master_custom_subnets | (optional) This configures master availability zones and their corresponding subnet CIDRs directly.<br><br>Example: `{ eu-west-1a = "10.0.0.0/20", eu-west-1b = "10.0.16.0/20" }` | map | `<map>` |
| tectonic_aws_master_ec2_type | Instance size for the master node(s). Example: `t2.medium`. | string | `t2.medium` |
| tectonic_aws_master_extra_sg_ids | (optional) List of additional security group IDs for master nodes.<br><br>Example: `["sg-51530134", "sg-b253d7cc"]` | list | `<list>` |
| tectonic_aws_master_iam_role_name | (optional) Name of IAM role to use for the instance profiles of master nodes. The name is also the last part of a role's ARN.<br><br>Example:  * Role ARN  = arn:aws:iam::123456789012:role/tectonic-installer  * Role Name = tectonic-installer | string | `` |
| tectonic_aws_master_root_volume_iops | The amount of provisioned IOPS for the root block device of master nodes. Ignored if the volume type is not io1. | string | `100` |
| tectonic_aws_master_root_volume_size | The size of the volume in gigabytes for the root block device of master nodes. | string | `30` |
| tectonic_aws_master_root_volume_type | The type of volume for the root block device of master nodes. | string | `gp2` |
| tectonic_aws_private_endpoints | (optional) If set to true, create private-facing ingress resources (ELB, A-records). If set to false, no private-facing ingress resources will be provisioned and all DNS records will be created in the public Route53 zone. | string | `true` |
| tectonic_aws_profile | (optional) This declares the AWS credentials profile to use. | string | `default` |
| tectonic_aws_public_endpoints | (optional) If set to true, create public-facing ingress resources (ELB, A-records). If set to false, no public-facing ingress resources will be created. | string | `true` |
| tectonic_aws_region | The target AWS region for the cluster. | string | `eu-west-1` |
| tectonic_aws_ssh_key | Name of an SSH key located within the AWS region. Example: coreos-user. | string | - |
| tectonic_aws_vpc_cidr_block | Block of IP addresses used by the VPC. This should not overlap with any other networks, such as a private datacenter connected via Direct Connect. | string | `10.0.0.0/16` |
| tectonic_aws_worker_custom_subnets | (optional) This configures worker availability zones and their corresponding subnet CIDRs directly.<br><br>Example: `{ eu-west-1a = "10.0.64.0/20", eu-west-1b = "10.0.80.0/20" }` | map | `<map>` |
| tectonic_aws_worker_ec2_type | Instance size for the worker node(s). Example: `t2.medium`. | string | `t2.medium` |
| tectonic_aws_worker_extra_sg_ids | (optional) List of additional security group IDs for worker nodes.<br><br>Example: `["sg-51530134", "sg-b253d7cc"]` | list | `<list>` |
| tectonic_aws_worker_iam_role_name | (optional) Name of IAM role to use for the instance profiles of worker nodes. The name is also the last part of a role's ARN.<br><br>Example:  * Role ARN  = arn:aws:iam::123456789012:role/tectonic-installer  * Role Name = tectonic-installer | string | `` |
| tectonic_aws_worker_load_balancers | (optional) List of ELBs to attach all worker instances to. This is useful for exposing NodePort services via load-balancers managed separately from the cluster.<br><br>Example:  * `["ingress-nginx"]` | list | `<list>` |
| tectonic_aws_worker_root_volume_iops | The amount of provisioned IOPS for the root block device of worker nodes. Ignored if the volume type is not io1. | string | `100` |
| tectonic_aws_worker_root_volume_size | The size of the volume in gigabytes for the root block device of worker nodes. | string | `30` |
| tectonic_aws_worker_root_volume_type | The type of volume for the root block device of worker nodes. | string | `gp2` |
| tectonic_base_domain | The base DNS domain of the cluster. It must NOT contain a trailing period. Some DNS providers will automatically add this if necessary.<br><br>Example: `openstack.dev.coreos.systems`.<br><br>Note: This field MUST be set manually prior to creating the cluster. This applies only to cloud platforms.<br><br>[Azure-specific NOTE] To use Azure-provided DNS, `tectonic_base_domain` should be set to `""` If using DNS records, ensure that `tectonic_base_domain` is set to a properly configured external DNS zone. Instructions for configuring delegated domains for Azure DNS can be found here: https://docs.microsoft.com/en-us/azure/dns/dns-delegate-domain-azure-dns | string | - |
| tectonic_bootstrap_upgrade_cl | (internal) Whether to trigger a ContainerLinux upgrade on node bootstrap. | string | `true` |
| tectonic_ca_cert | (optional) The content of the PEM-encoded CA certificate, used to generate Tectonic Console's server certificate. If left blank, a CA certificate will be automatically generated. | string | `` |
| tectonic_ca_key | (optional) The content of the PEM-encoded CA key, used to generate Tectonic Console's server certificate. This field is mandatory if `tectonic_ca_cert` is set. | string | `` |
| tectonic_ca_key_alg | (optional) The algorithm used to generate tectonic_ca_key. The default value is currently recommended. This field is mandatory if `tectonic_ca_cert` is set. | string | `RSA` |
| tectonic_cluster_cidr | (optional) This declares the IP range to assign Kubernetes pod IPs in CIDR notation. | string | `10.2.0.0/16` |
| tectonic_cluster_name | The name of the cluster. If used in a cloud-environment, this will be prepended to `tectonic_base_domain` resulting in the URL to the Tectonic console.<br><br>Note: This field MUST be set manually prior to creating the cluster. Warning: Special characters in the name like '.' may cause errors on OpenStack platforms due to resource name constraints. | string | - |
| tectonic_config_version | (internal) This declares the version of the global configuration variables. It has no impact on generated assets but declares the version contract of the configuration. | string | `1.0` |
| tectonic_container_base_images | (internal) Base images of the components to use | map | `<map>` |
| tectonic_container_images | (internal) Container images to use | map | `<map>` |
| tectonic_container_linux_channel | (optional) The Container Linux update channel.<br><br>Examples: `stable`, `beta`, `alpha` | string | `stable` |
| tectonic_container_linux_version | The Container Linux version to use. Set to `latest` to select the latest available version for the selected update channel.<br><br>Examples: `latest`, `1465.6.0` | string | `latest` |
| tectonic_custom_ca_pem_list | (optional) A list of PEM encoded CA files that will be installed in /etc/ssl/certs on etcd, master, and worker nodes. | list | `<list>` |
| tectonic_ddns_key_algorithm | (optional) This only applies if you use the modules/dns/ddns module.<br><br>Specifies the RFC2136 Dynamic DNS server key algorithm. | string | `` |
| tectonic_ddns_key_name | (optional) This only applies if you use the modules/dns/ddns module.<br><br>Specifies the RFC2136 Dynamic DNS server key name. | string | `` |
| tectonic_ddns_key_secret | (optional) This only applies if you use the modules/dns/ddns module.<br><br>Specifies the RFC2136 Dynamic DNS server key secret. | string | `` |
| tectonic_ddns_server | (optional) This only applies if you use the modules/dns/ddns module.<br><br>Specifies the RFC2136 Dynamic DNS server IP/host to register IP addresses to. | string | `` |
| tectonic_dns_name | (optional) DNS prefix used to construct the console and API server endpoints. | string | `` |
| tectonic_etcd_backup_size | (optional) The size in MB of the PersistentVolume used for handling etcd backups. | string | `512` |
| tectonic_etcd_backup_storage_class | (optional) The name of an existing Kubernetes StorageClass that will be used for handling etcd backups. | string | `` |
| tectonic_etcd_ca_cert_path | (optional) The path of the file containing the CA certificate for TLS communication with etcd.<br><br>Note: This works only when used in conjunction with an external etcd cluster. If set, the variable `tectonic_etcd_servers` must also be set. | string | `/dev/null` |
| tectonic_etcd_client_cert_path | (optional) The path of the file containing the client certificate for TLS communication with etcd.<br><br>Note: This works only when used in conjunction with an external etcd cluster. If set, the variables `tectonic_etcd_servers`, `tectonic_etcd_ca_cert_path`, and `tectonic_etcd_client_key_path` must also be set. | string | `/dev/null` |
| tectonic_etcd_client_key_path | (optional) The path of the file containing the client key for TLS communication with etcd.<br><br>Note: This works only when used in conjunction with an external etcd cluster. If set, the variables `tectonic_etcd_servers`, `tectonic_etcd_ca_cert_path`, and `tectonic_etcd_client_cert_path` must also be set. | string | `/dev/null` |
| tectonic_etcd_count | The number of etcd nodes to be created. If set to zero, the count of etcd nodes will be determined automatically.<br><br>Note: This is not supported on bare metal. | string | `0` |
| tectonic_etcd_servers | (optional) List of external etcd v3 servers to connect with (hostnames/IPs only). Needs to be set if using an external etcd cluster. Note: If this variable is defined, the installer will not create self-signed certs. To provide a CA certificate to trust the etcd servers, set "tectonic_etcd_ca_cert_path".<br><br>Example: `["etcd1", "etcd2", "etcd3"]` | list | `<list>` |
| tectonic_etcd_tls_enabled | (optional) If set to `true`, all etcd endpoints will be configured to use the "https" scheme.<br><br>Note: If `tectonic_experimental` is set to `true` this variable has no effect, because the experimental self-hosted etcd always uses TLS. | string | `true` |
| tectonic_image_re | (internal) Regular expression used to extract repo and tag components | string | `/^([^/]+/[^/]+/[^/]+):(.*)$/` |
| tectonic_kubelet_debug_config | (internal) debug flags for the kubelet (used in CI only) | string | `` |
| tectonic_license_path | The path to the tectonic licence file. You can download the Tectonic license file from your Account overview page at [1].<br><br>[1] https://account.coreos.com/overview<br><br>Note: This field MUST be set manually prior to creating the cluster unless `tectonic_vanilla_k8s` is set to `true`. | string | `` |
| tectonic_master_count | The number of master nodes to be created. This applies only to cloud platforms. | string | `1` |
| tectonic_networking | (optional) Configures the network to be used in Tectonic. One of the following values can be used:<br><br>- "flannel": enables overlay networking only. This is implemented by flannel using VXLAN.<br><br>- "canal": [ALPHA] enables overlay networking including network policy. Overlay is implemented by flannel using VXLAN. Network policy is implemented by Calico.<br><br>- "calico": [ALPHA] enables BGP based networking. Routing and network policy is implemented by Calico. Note this has been tested on baremetal installations only. | string | `flannel` |
| tectonic_pull_secret_path | The path the pull secret file in JSON format. This is known to be a "Docker pull secret" as produced by the docker login [1] command. A sample JSON content is shown in [2]. You can download the pull secret from your Account overview page at [3].<br><br>[1] https://docs.docker.com/engine/reference/commandline/login/<br><br>[2] https://coreos.com/os/docs/latest/registry-authentication.html#manual-registry-auth-setup<br><br>[3] https://account.coreos.com/overview<br><br>Note: This field MUST be set manually prior to creating the cluster unless `tectonic_vanilla_k8s` is set to `true`. | string | `` |
| tectonic_self_hosted_etcd | (internal) [ALPHA] If set to one of the following values, self-hosted etcd is deployed:<br><br>- "enabled": Deploys a self-hosted etcd cluster.<br><br>- "pv_backup": Deploys a self-hosted etcd cluster including backups to Persistence Volumes. `tectonic_etcd_backup_size` and `tectonic_etcd_backup_storage_class` must be configured when using this setting. | string | `` |
| tectonic_service_cidr | (optional) This declares the IP range to assign Kubernetes service cluster IPs in CIDR notation. The maximum size of this IP range is /12 | string | `10.3.0.0/16` |
| tectonic_stats_url | (internal) The Tectonic statistics collection URL to which to report. | string | `https://stats-collector.tectonic.com` |
| tectonic_tls_validity_period | Validity period of the self-signed certificates (in hours). Default is 3 years. This setting is ignored if user provided certificates are used. | string | `26280` |
| tectonic_update_app_id | (internal) The Tectonic Omaha update App ID | string | `6bc7b986-4654-4a0f-94b3-84ce6feb1db4` |
| tectonic_update_channel | (internal) The Tectonic Omaha update channel | string | `tectonic-1.7-production` |
| tectonic_update_server | (internal) The URL of the Tectonic Omaha update server | string | `https://tectonic.update.core-os.net` |
| tectonic_vanilla_k8s | If set to true, a vanilla Kubernetes cluster will be deployed, omitting any Tectonic assets. | string | `false` |
| tectonic_versions | (internal) Versions of the components to use | map | `<map>` |
| tectonic_worker_count | The number of worker nodes to be created. This applies only to cloud platforms. | string | `3` |
