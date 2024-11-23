module InnerPerformance
  class Configuration
    attr_accessor :sample_rate
    attr_accessor :keep_events_for

    def initialize
      @sample_rate = 2
      @keep_events_for = 1.week
    end
  end
end
