alias clone="rails db:test:prepare"
alias migrate="rails db:migrate && clone"
alias update="git checkout main && git pull --rebase && bundle install && yarn install && migrate"
