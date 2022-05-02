# README

## Getting Started

1. run bundle install
```bash
$ bundle install
```

2. create postgreSQL user
```bash
$ createuser rails7_sample --superuser
```

3. create database
```bash
$ RAILS_ENV=development bundle exec rails db:create
$ bundle exec ridgepole -c config/database.yml -E development --apply -f db/schemas/Schemafile
```

4. build frontend  
```bash
$ yarn install
$ yarn build
```

5. Let's access to top page  

run below command and go to `http://localhost:3000`
```bash
$ bundle exec rails server
```
