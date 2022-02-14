# bash-utils


## Examples of useful commands/shortcuts

### Tips when creating bash files:

Always start with `#!/bin/bash` to explicitly say its a bash, other wise it might interrupted as shell.


### Docker stuff

#### Clear dangling images

`docker rmi $(docker images -f "dangling=true" -q)`

### Loops in bash 

Defineing an Array can be as:

`myArray=("something" "anotherthing")` [1]

#### To iterate over an Array it in one line bash:

`for i in "${myArray[@]}"; do echo  "$i"; done;`

#### To Iterate without definting an Array:

`for i in "something" "anotherthing" ; do echo  "$i"; done;`
Or
`for i in something anotherthing ; do echo  "$i"; done;`

[1]: This syntax of using parenthesis to define an array is only supported in bash not in shell

### ssh/scp 

Moving a directory using scp:
ref: https://unix.stackexchange.com/questions/188285/how-to-copy-a-file-from-a-remote-server-to-a-local-machine 

### Receiving a file or directory 

`scp -i <key> -r user@domain:<remote_target> /<local_target>`

#### Sending a file or directory

`scp -i <key> -r /<local_target> user@domain:<remote_target>`


Worth checking the `rsync` command since it wouldn't recopy the files which can be useful if the getting the files is common