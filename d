#!/usr/bin/env bash

if [ $# -gt 0 ]; then

    if [ "$1" == "install" ] || [ "$1" == "i" ]; then
      JEKYLL_ENV=production bundle config path vendor/bundle
      JEKYLL_ENV=production bundle install --jobs 4 --retry 3

    elif [ "$1" == "update" ] || [ "$1" == "u" ]; then
      JEKYLL_ENV=production bundle u

    elif [ "$1" == "up" ] || [ "$1" == "serve" ]; then
        JEKYLL_ENV=production bundle exec jekyll s --config _config.yml,__dev.yml

    elif [ "$1" == "build" ] || [ "$1" == "b" ]; then

      if [ ${JEKYLL_ENV} == 'production' ]; then
        # explicitly add JEKYLL_ENV=production to generate public
        JEKYLL_ENV=production bundle exec jekyll b --config _config.yml,__prod.yml
      else
        JEKYLL_ENV=development bundle exec jekyll b --config _config.yml,__dev.yml
      fi

    else
        JEKYLL_ENV=production bundle "$@"
    fi
else
    which ruby
    which bundle
    JEKYLL_ENV=production bundle exec jekyll -v
fi
