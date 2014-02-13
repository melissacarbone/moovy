# Moovy

API wrapper for OnConnect

## Installation

Add this line to your application's Gemfile:

    gem 'moovy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moovy

## Usage

```
Search movies that are playing locally in a given radius:

  Moovy::Movie.search('11102', '2014-02-14', '5')

```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
