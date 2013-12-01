alias clone="rake db:test:prepare"
alias load="rake db:fixtures:load"
alias sload="rake spec:db:fixtures:load"
alias migrate="rake db:migrate && clone"
alias int="rake integrate"

function rails {
  if [ -e script/rails ]; then
    if [ -n "`which foreman`" ]; then
      foreman run script/rails $@
    else
      script/rails $@
    fi
  else
    `which rails` $@
  fi
}

function rake {
  if [ -e Gemfile ]; then
    bundle exec rake $@
  else
    `which rake` $@
  fi
}

function heroku {
  if [ -e Gemfile ]; then
    bundle exec heroku $@
  else
    `which heroku` $@
  fi
}

function rspec {
  if [ -e Gemfile ]; then
    bundle exec rspec $@
  else
    `which rspec` $@
  fi
}

function fs {
  bundle exec foreman start -f Procfile $@
}

function s {
  if [ -e script/rails ]; then
    script/rails server $@
  else
    script/server $@
  fi
}

function c {
  if [ -e script/rails ]; then
    script/rails console $@
  else
    script/console $@
  fi
}

function g {
  if [ -e script/rails ]; then
    script/rails generate $@
  else
    script/generate $@
  fi
}