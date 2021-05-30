#!/bin/bash


# Clone Repos
git clone git@github.com:Swihla/api-swihla.git

git clone git@github.com:Swihla/front-swihla.git

# Build Containers
docker-compose build

# Install Rails Dependencies
docker-compose run --rm --no-deps web bundle install

docker-compose run --rm --no-deps web yarn install

# Install React Dependencies
docker-compose run --rm --no-deps client yarn install

# Create Rails DB and Migrate
docker-compose run --rm --no-deps web rails db:create db:migrate