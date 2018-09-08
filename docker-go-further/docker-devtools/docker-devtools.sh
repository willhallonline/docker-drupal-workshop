#!/bin/bash
# https://github.com/willhallonline/docker-devtools-aliases

function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        ${@:2}
}

alias phpcs-drupal="docker_alias /app willhallonline/drupal-phpcs:alpine phpcs --extensions=php,inc,install,module,theme"
alias phpcbf-drupal="docker_alias /app willhallonline/drupal-phpcs:alpine phpcbf --extensions=php,inc,install,module,theme"