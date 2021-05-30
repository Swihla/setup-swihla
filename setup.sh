git clone 

git clone 

docker-compose build

docker-compose run --rm --no-deps web bundle install

docker-compose run --rm --no-deps web yarn install

docker-compose run --rm --no-deps client yarn install

docker-compose run --rm --no-deps web rails db:create db:migrate