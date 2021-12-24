# Temporal Ruby on Rails

This is a basic Ruby on Rails example of Temporal. The example uses the workflows/activities from the temporal-ruby SDK. The implementation is a proof of concept to show how the workers can be run alongside a Rails application.

## Instructions

Run `bundle install` to get latest [`coinbase/temporal-ruby`](https://github.com/coinbase/temporal-ruby) gem. At the time of making this, the gem was at commit [965ef0d37497a859ff57c2228badcb672036e264](https://github.com/coinbase/temporal-ruby/commit/965ef0d37497a859ff57c2228badcb672036e264).

Use the `bin/temporal` commands, such as `bin/temporal/worker`.

If running locally, [Temporal Server docker image](https://docs.temporal.io/docs/server/quick-install/) must be running.

## Running locally

Install foreman: `gem install foreman`.

Start the web and worker processes using foreman: `foreman start -f Procfile.dev`.

## Deploying

If this was deployed to Heroku, the worker bin executable would be placed in a Procfile and initialized on deploy.

Deploying to heroku will trigger the production procfile using: `foreman start Procfile`.

## Learn more
[Temporal](https://temporal.io/) is best learned directly from the developer documentation on the [Temporal docs website](https://docs.temporal.io/).

Temporal Ruby SDK is an unofficial implementation from [Coinbase](https://coinbase.com) by [Anthony Dmitriyev](https://github.com/antstorm).

## Author
Created by [Leonard Bogdonoff](https://twitter.com/rememberlenny) from [Milk Video](https://milkvideo.com)