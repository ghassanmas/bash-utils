delete_untagged_docker_images(){
docker rmi $(docker images -f "dangling=true" -q)
}