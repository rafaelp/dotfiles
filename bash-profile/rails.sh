alias clone="rake db:test:prepare"
alias migrate="rake db:migrate && clone"

function run {
  if [ -e tmp/enable-docker-compose.txt ]; then
    docker-compose run --rm app $@
  else
    `which run` $@
  fi
}

function rails {
  if [ -e tmp/enable-docker-compose.txt ]; then
    docker-compose run --rm app bundle exec rails $@
  else
    if [ -e Gemfile ]; then
      bundle exec rails $@
    else
      `which rails` $@
    fi
  fi
}

function rake {
  if [ -e tmp/enable-docker-compose.txt ]; then
    docker-compose run --rm app bundle exec rake $@
  else
    if [ -e Gemfile ]; then
      bundle exec rake $@
    else
      `which rake` $@
    fi
  fi
}

function bundle {
  if [ -e tmp/enable-docker-compose.txt ]; then
    docker-compose run --rm app bundle $@
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
  if [ -e tmp/enable-docker-compose.txt ]; then
    docker-compose run --rm app bundle exec rspec $@
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