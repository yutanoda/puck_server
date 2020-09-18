# README


* Ruby version
  2.7.1

* Development environment
  DockerとDockerComposeインストール環境下で
  $ docker-compose up -d
  $ docker-compose exec web bash 
  /puck_server# rails s -b 0.0.0.0

  ※osのimageはDebian

* Database for development
  $ rails db:create
  $ rails db:migrate

* Test 
$ rspec  

* Deploying



# puck_server
