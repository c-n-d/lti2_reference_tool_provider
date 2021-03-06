# LTI 2.1 Reference Tool Provider
[![Build Status](https://travis-ci.org/instructure/lti2_reference_tool_provider.svg?branch=master)](https://travis-ci.org/instructure/lti2_reference_tool_provider)
[![Code Climate](https://codeclimate.com/github/instructure/lti2_reference_tool_provider.svg)](https://codeclimate.com/github/instructure/lti2_reference_tool_provider)
[![Dependency Status](https://gemnasium.com/badges/github.com/instructure/lti2_reference_tool_provider.svg)](https://gemnasium.com/github.com/instructure/lti2_reference_tool_provider)
[![Coverage Status](https://coveralls.io/repos/github/instructure/lti2_reference_tool_provider/badge.svg?branch=coveralls)](https://coveralls.io/github/instructure/lti2_reference_tool_provider?branch=coveralls)

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

An LTI tool provider intended to be used as a reference for implementing the IMS LTI 2.1 specification. Section numbers in the comments (i.e. “6.1.2”) refer to sections of the IMS LTI 2.1 specification.

## Running locally
### Setup
1. `bundle install`
2. `bundle exec rake db:create`
3. `bundle exec rake db:migrate`
4. `bundle exec rackup`

### Running tests
1. `bundle exec rake db:migrate RACK_ENV=test`
2. `bundle exec rspec`


## Running in docker

### Setup
1. 'docker-compose build'
2. 'docker-compose run --rm web bundle exec rake db:setup'

### Running the server
1. 'docker-compose up'

### Running migrations
1. 'docker-compose build'
2. 'docker-compose run --rm web bundle exec rake db:migrate'
