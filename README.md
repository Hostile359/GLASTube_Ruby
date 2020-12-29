# GLASTube


![Unit Tests & Lint](https://github.com/Hostile359/GLASTube_Ruby/workflows/Unit%20Tests%20&%20Lint/badge.svg)

## Requirements
  ruby 2.7.2<br>
  rails 6.1.0<br>
  postgresql<br>
  yarn<br>

## Install

```bash
bundle install
```

## Database preparing
```bash
sudo su - postgres
psql
\password postgres
create role rails_dev with createdb login password 'Qwerty123';
```

## Setup database
```bash
rails db:setup
rails db:migrate
```

## Run server
```bash
rails s
```

## Run test

```bash
rspec
```

## Run rubocop

```bash
rubocop
rubocop -a # Auto-correct offenses
```
