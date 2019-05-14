# SAMBAPROJECT


_**samba project with ansible**_


### **ANSIBLE PART**


**Ansible file:** _samba.yml_

The command used to execute samba.yml is : 
```
ansible-playbook samba.yml
```
The hosts file is now at _/etc/ansible/hosts_ so we don't have to pass -i hosts as argument

The variables are now in _/vars/main.yml_

To connect to the samba server, use : `smbclient -U% //51.15.62.129`
### **TERRAFORM PART**

**Terraform file:**  _main.tf_ _variables.tf_
- create _variables.tfvars_, and put the name of your variables inside:
```
scw_token=x

organization=x
```
- Run 

```terraform init``` 

then ```terraform plan -var-file="variables.tfvars"```

then ```terraform apply -var-file="variables.tfvars"```

### **PACKER PART**

**Packer file:** _scaleway-cloud-courses-template.json_

my config:


- In the _.bashrc_ file write : ```export SCW_TOKEN=<your_token>``` and ```export SCALEWAY_ORGANIZATION=<your_organization_id>```

- Run ```packer build  scaleway-cloud-courses-template.json```
