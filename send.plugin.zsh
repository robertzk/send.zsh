send() {
  git add .
  git commit -a -m "$1"
  pull
  push
}


