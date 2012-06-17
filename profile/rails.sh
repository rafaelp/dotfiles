alias migrar="rake db:migrate db:test:prepare"
alias migrate="migrar"
alias int="RAILS_ENV=test rake integrate"

function opengem {
	mate `bundle show $@`
}

function rails {
	if [ -e script/rails ]; then
		script/rails $@
	else
		`which rails` $@
	fi
}

function rake {
  if [ -e Gemfile ]; then
    time bundle exec rake $@
  else
    time `which rake` $@
  fi
}

function rspec {
  if [ -e Gemfile ]; then
    time bundle exec rspec $@
  else
    time `which rspec` $@
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