#!/bin/sh

if [[ $ENVIRONMENT == "staging" ]]; then
    PREFIX="staging."
    SUFFIX_REDIRECT=":10443"
elif [[ $ENVIRONMENT == "prod" ]]; then
    PREFIX=""
    SUFFIX_REDIRECT=""
fi

export PREFIX=${PREFIX}
export SUFFIX_REDIRECT=${SUFFIX_REDIRECT}

envsubst '$${DOMAIN_NAME},$${PREFIX},$${SUFFIX_REDIRECT}' < /etc/nginx/conf.d/YOUR_PROJECT.conf.template > /etc/nginx/conf.d/YOUR_PROJECT.conf

exec nginx -g 'daemon off;'
