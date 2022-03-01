## Working with Docker Containers and Ansible 
Hope these reminders help someday soon!

### One-time Setup
Decide whether or NOT it's a good idea for you to use ```keychain```.

If your use is recreational or educational, append these to your ```~/.bash_profile```.
If the crown jewels are involved, then this might be too risky. 

    eval `keychain --eval id_ed25519`
    eval `keychain --eval id_rsa`

Add  ```jumpbox```  to your  ```$HOME/.ssh/config```

    host jumpbox
    hostname <Public IP Address>
    user <username>
    identityfile ~/.ssh/<private key filename>
    ServerAliveInterval 300

### Useful commands
After you  ```ssh jumpbox```, start the container and connect

    sudo docker container list -a
    sudo docker start pedantic_khayyam
    sudo docker attach pedantic_khayyam

You may need to copy files between the docker host and a container. 
If so, nitiate these ```cp``` operations from the docker host only.  It works in either direction.

    sudo docker cp <container_id>:<source_path> <destination_path>
    sudo docker cp ae75ace0a771:/etc/ansible.Backup.with.Roles.tar .

To copy files between the docker host and your laptop, another step is needed.
Initate thes ```scp``` operations from your laptop only.

    scp <username>@jumpbox:<path-and-filename>  <destination-directory>```  
