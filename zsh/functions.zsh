# Color Helper
RED='\033[0;31'
BLUE='\033[0;34]'
PURPLE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36]'
NOCOLOR='\033[0m'

# Applications
function dynamodb() {
  echo "${PURPLE}starting dynamo db instance on http://localhost:8000${NOCOLOR}"
  cd /Applications/dynamodb && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory
}
function elasticsearch() {
  echo "${PURPLE}starting elasticsearch instance on http://localhost:9200${NOCOLOR}"
  /Applications/elasticsearch/bin/elasticsearch
}

# Get mime-type of file
function mimetype() {
	file --mime-type -b $*
}

function newtab() {
  open . -a iterm
}

function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 30 -L ${1:-3} -aC $2
}
