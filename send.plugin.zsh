send() {
  git add "$(git rev-parse --show-toplevel)"
  git commit -a -m "$1"
  git pull origin master
  git push origin master 
}


