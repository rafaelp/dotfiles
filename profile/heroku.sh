function hs {
  heroku $@ --app "`basename $PWD`-staging"
}
export -f hs

function hp {
  heroku $@ --app "`basename $PWD`-production"
}
export -f hp

function hh {
  heroku accounts:set helabs
  heroku $@
}
export -f hh

function hb {
  heroku accounts:set bielsystems
  heroku $@
}
export -f hb