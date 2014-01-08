function hh {
  heroku $@ --app "`basename $PWD`"
}
export -f hh

function hs {
  heroku $@ --app "`basename $PWD`-staging"
}
export -f hs

function hp {
  heroku $@ --app "`basename $PWD`-production"
}
export -f hp

function herokuhelabs {
  heroku accounts:set helabs
  heroku $@ -r helabs
}
export -f herokuhelabs

function herokubielsystems {
  heroku accounts:set bielsystems
  heroku $@ -r bielsystems
}
export -f herokubielsystems