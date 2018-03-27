alias clone="rake db:test:prepare"
alias load="rake db:fixtures:load"
alias sload="rake spec:db:fixtures:load"
alias migrate="rake db:migrate && clone"
alias int="rake integrate"

function run {
  if [ -e docker-compose.yml ]; then
    docker-compose run --rm web $@
  else
    `which run` $@
  fi
}

function rails {
  if [ -e script/rails ]; then
    if [ -e docker-compose.yml ]; then
      docker-compose run --rm web script/rails $@
    else
      if [ -n "`which foreman`" ]; then
        foreman run script/rails $@
      else
        script/rails $@
      fi
    fi
  else
    `which rails` $@
  fi
}

function rake {
  if [ -e docker-compose.yml ]; then
    docker-compose run --rm web bundle exec rake $@
  else
    if [ -e Gemfile ]; then
      bundle exec rake $@
    else
      `which rake` $@
    fi
  fi
}

function bundle {
  if [ -e docker-compose.yml ]; then
    docker-compose run --rm web bundle $@
  else
    `which bundle` $@
  fi
}

# Commented because Heroku Toolbet use heroku with its own Ruby
# function heroku {
#   if [ -e Gemfile ]; then
#     bundle exec heroku $@
#   else
#     `which heroku` $@
#   fi
# }

function rspec {
  if [ -e docker-compose.yml ]; then
    docker-compose run --rm web bundle exec rspec $@
  else
    if [ -e Gemfile ]; then
      bundle exec rspec $@
    else
      `which rspec` $@
    fi
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