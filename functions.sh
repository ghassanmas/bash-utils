delete_untagged_docker_images(){
docker rmi $(docker images -f "dangling=true" -q)
}

create_ssh_key(){
 ssh-keygen -t ed25519 -C "$1"
 eval "$(ssh-agent -s)"
}

ec2_