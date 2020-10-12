# Great Blog

## System Requirements
- Rails >= 6.0.2.2
- Ruby 2.7.1
- Node 12.16.1

## Database
MongoDB
Installing MongoDB was a bit of trouble, as they lost their previous tap with homebrew, but this recent one worked on Oct 11th, 2020

* Start Tap
  `brew tap mongodb/brew`
* Install free community edition
  `brew install mongodb-community`
* Start and will restart on powerdown of device
  `brew services start mongodb-community`

### start/stop manually on mac
* Start
  `mongod --config /usr/local/etc/mongod.conf`
* Stop
  `mongo admin --eval "db.shutdownServer()"`

## Starting App
1. Start MongoDB ... see above
2. While in project root, install gem dependencies
 - `bundle install`
3. If running locally, "config/mongoid.yml " should take care of configuration.
4. If running MongoDB Atlas make sure to update the mongoid.yml following these guides.
```yml
development:
  clients:
    default:
      uri: mongodb+srv://user:pass@yourcluster.mongodb.net/blog_development?retryWrites=true&w=majority
      options:
        server_selection_timeout: 5
```
5. Install Webpacker
 - `rails webpacker:install`

**important**

**6.** When running in production or on a new instance of MongoDB
- Run `rails db:mongoid:create_indexes` In order to guarantee unique titles on posts.

7. Start the app with 
- `rails s`

8. Enjoy!
