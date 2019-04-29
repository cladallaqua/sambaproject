# SAMBAPROJECT


_**samba project with ansible**_


### **ANSIBLE PART**


**Ansible file:** _samba.yml_

The command used to execute samba.yml is : 

```
ansible-playbook -i hosts -l servscaleway samba.yml --extra-vars "sambabauser=name_user password=user_password"
```

### **TERRAFORM PART**

**Terraform file:**  _main.tf_

- Create .scwrc file
- Configure this .scwrc file with adding this line : ```scw login --token=<your_token> --organization=<your_organization_id>```
- Run ```terraform init``` then ```terraform plan```then ```terraform apply```

### **PACKER PART**

**Packer file:** _scaleway-cloud-courses-template.json_

my config:

In the _.bashrc_ file write :
- ```export SCW_TOKEN=<your_token>``` and ```export SCALEWAY_ORGANIZATION=<your_organization_id>```

Just run ```packer build  scaleway-cloud-courses-template.json```
