# bash-utils


## Examples of useful commands 

### ssh/scp 

Moving a directory using scp:
ref: https://unix.stackexchange.com/questions/188285/how-to-copy-a-file-from-a-remote-server-to-a-local-machine 

### Receiving a file or directory 
`scp -i <key> -r user@domain:<remote_target> /<local_target>`

#### Sending a file or directory

`scp -i <key> -r /<local_target> user@domain:<remote_target>`


Worth checking the `rsync` command since it wouldn't recopy the files which can be useful if the getting the files is common