# TestTimeTracking

* Tracks the time each individual test takes
* Prints out a list of your ten slowest tests and their times

## Installation

Add this line to your application's Gemfile:

    gem 'test_time_tracking'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install test_time_tracking

## Requirements

 * Minitest is required
     * the module `TestTimeTracking` hooks into minitest's `before_setup` and `after_teardown` callbacks.

## Usage (Rails)

in `test/test_helper.rb`
```ruby
  require 'test_time_tracking'

  #this will print out the results
  MiniTest::Unit.after_tests do
    #by default the 10 slowest tests are printed out
    TestTimeTracking::Results.list
    #pass in the number of results to print out
    #TestTimeTracking::Results.list(20)
  end

  #include TestTimeTracking to time every test
  class ActiveSupport::TestCase
    include TestTimeTracking
  end
```

## TODO

  * Get this to work with other testing frameworks, like RSpec

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
