## Footbool Scorecard


#### Requirements

- ruby
- postgres
- redis
- yarn

#### Installation

```
  $ bundle
  $ yarn install
  $ rails db:create db:migrate db:seed
```

#### Run rake task to import data from file

```
  $ rake match_history_import:load_data
```

#### Running locally

Rails server:

```
  $ rails s 
```

Visit http://localhost:3000
```
Note: On localhost:3000 you can see both raw data and html view for the side
