module TestTimeTracking

  class Result

    attr_accessor :name
    attr_accessor :time

    def initialize(name, time)
      @name = name
      @time = time
    end

  end

end
