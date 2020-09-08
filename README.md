# GreenGarden

[![Build Status](https://travis-ci.org/nardonykolyszyn/green_garden.svg?branch=master)](https://travis-ci.org/nardonykolyszyn/green_garden)

*The land of green trees, where the magic happens and everything is possible, welcome to* **Green Garden** 🌳✨
-------------------------------------

**Why this name?**

These Trees are not regular ones, here is where the magic occurs, and where mysterious creatures called "Bugs" are on the prowl, be careful, and enjoy this new adventure. 🧙

**Purpose**

Green Garden was created with the purpose to teach algorithms by using multidimensional data-structures such as Hashes and Graphs.

**Capabilities**

*Before raising the blessed sword, get up that stick!*

Green Garden allows provides a powerful CLI tool to perform a set of operations with trees, additionally it's a Ruby gem that can be easily installed in your Rails or Ruby application.

- Compare two JSON files

**Coming soon**
- *[Label large datasets](https://whatis.techtarget.com/definition/data-labeling)*
- *Order datasets by a variety of options*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'green_garden'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install green_garden

## Usage

```bash
  $ green_garden diff data/chicago.json data/seattle.json
```

> It returns "true" if both datasets are equal and "false" if not.

**Show current version**

```bash
  $ green_garden --version
```

**Show help**

```bash
  $ green_garden --help
```

## Performance

OJ was implemented to load heavy JSON files, feel free to use any big dataset you have, I guarantee you that there will not be any problem comparing them, recursive approach won't waste memory in unnecesary and repetitive operations.

**Fuzzing**

1. Download this sample dataset (https://github.com/lutangar/cities.json/blob/master/cities.json) [SIZE: 13MB]

2. Run

```bash
  $ green_garden diff cities.json cities.json
```
--------------------------------

![Gif](https://media.giphy.com/media/Pitv6kOoR0XpsUUiJG/giphy.gif)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/green_garden. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/green_garden/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GreenGarden project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/green_garden/blob/master/CODE_OF_CONDUCT.md).
