function middleman {
  if [ -e Gemfile ]; then
    bundle exec middleman $@
  else
    `which middleman` $@
  fi
}
