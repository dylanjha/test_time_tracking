module TestTimeTracking

  class Results
    @results = []

    def self.add(name, time)
      @results << Result.new(name, time)
    end

    def self.list(n = 10)
      @results.sort{ |r1, r2| r2.time <=> r1.time }.take(n).each do |result|
        puts [result.time, result.name].join(" - ")
      end
    end
  end

end
