require "test_time_tracking/version"
require "test_time_tracking/result"
require "test_time_tracking/results"

module TestTimeTracking

  # def self.results
  #   TestTimeTracking::Results.list
  # end

  def before_setup
    super
    @start_time = Time.now
  end

  def after_teardown
    name = [self.class.name, method_name].join(" - ")
    time = Time.now - @start_time
    Results.add(name, time)
    super
  end

end
