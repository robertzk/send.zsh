pull() {
  if [ $# -eq 2 ]; then
    git pull --rebase -q $2 "$(git rev-parse --abbrev-ref HEAD)"
  else
    git pull --rebase -q origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

push() {
  if [ $# -eq 2 ]; then
    git push -q $2 "$(git rev-parse --abbrev-ref HEAD)"
  else
    git push -q origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

send() {
  git add "$(git rev-parse --show-toplevel)"
  case $# in
    0) git commit -a -m "I'm too lazy to write a commit message.";;
    1) git commit -a -m "$1";;
    2) git commit -a -m "$1" -m "$2";;
  esac
  pull
  push
}


