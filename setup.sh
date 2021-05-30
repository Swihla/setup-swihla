#!/bin/bash

git clone git@github.com:Swihla/api-swihla.git

git clone git@github.com:Swihla/front-swihla.git

docker-compose build

docker-compose run --rm --no-deps web bundle install

docker-compose run --rm --no-deps web yarn install

docker-compose run --rm --no-deps client yarn install

docker-compose run --rm --no-deps web rails db:create db:migrate