export PATH="`brew --prefix`/bin:$PATH"
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi