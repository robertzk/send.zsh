pull_or_push() {
  if [ $# -eq 2 ]; then
    git $1 -q $2 `git rev-parse --abbrev-ref HEAD`
  else
    git $1 -q origin `git rev-parse --abbrev-ref HEAD`
  fi
}

pull() {
  pull_or_push "pull --rebase" $@
}

push() {
  pull_or_push "push" $@ &
}

send() {
  git add "$(git rev-parse --show-toplevel)"
  if [ $# -eq 1 ]; then
   git commit -a -m "$1"
  else
   git commit -a -m "I'm too lazy to write a commit message."
  fi
  pull
  push
}


