#### Description
Here we are setting up a MongoDB cluster on AWS cloud.

#### Steps
The following are common steps,

Sr.No| Step | Description | Remark|
-|-|-|-|
1|Create 3 new EC2 machines|<ul><li>Ubuntu Server 16.04 LTS (HVM)</li><li>Add storage</li><li>Select correct vpc</li><li>create new security group and use same SG for all servers.</li><li>Allow SSH on 22 and 27017 only from required ip</li><li></li></ul>||
2|Elastic IP|Acquire 3 elastic ips||
3|DNS mapping |Complete DNS mapping if required||
4|Hostnames|Setting hostnames in each server|<ul><li></li></ul>
