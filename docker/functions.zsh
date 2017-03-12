# Docker cleanup command from https://github.com/docker/docker/issues/928
function docker-clean() {
  docker rm $(docker ps -a -q) && docker rmi $(docker images -q) && docker ps -a | cut -c-12 | xargs docker rm
}
