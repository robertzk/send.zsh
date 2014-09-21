pull_or_push() {
  git $1 origin `git rev-parse --abbrev-ref HEAD`
  if [ $# -eq 3 ]; then
    git $1 $2 `git rev-parse --abbrev-ref HEAD`
  else
    git $1 origin `git rev-parse --abbrev-ref HEAD`
  fi
}

pull() {
  pull_or_push "pull" $@
}

push() {
  pull_or_push "push" $@
}

send() {
  git add "$(git rev-parse --show-toplevel)"
  if [ $# -eq 2 ]; then
    git commit -a -m "$1"
  else
    git commit -a -m "I'm too lazy to write a commit message."
  fi
  pull
  push
}


