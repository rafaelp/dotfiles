function hh {
  heroku $1 --app "`basename $PWD`"
}
export -f hh

function hs {
  heroku $1 --app "`basename $PWD`-staging"
}
export -f hs

function hp {
  heroku $1 --app "`basename $PWD`-production"
}
export -f hp