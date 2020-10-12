# README

Prior to getting this app Running, you must have Mongodb.
MongoDB lost their previous tap with homebrew a couple years ago, but I know this one works.

- Oct 11th, 2020
  Start Tap
  `brew tap mongodb/brew`
  Install free community edition
  `brew install mongodb-community`
  Start and will restart on powerdown of device
  `brew services start mongodb-community`

  Start/Stop Manually On Mac
  Start
  `mongod --config /usr/local/etc/mongod.conf`
  Stop
  `mongo admin --eval "db.shutdownServer()"`

Important: when running in production

- Run `rails db:mongoid:create_indexes` In order to guarantee unique titles on posts.

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
