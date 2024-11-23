module InnerPerformance
  class Configuration
    attr_accessor :sample_rates
    attr_accessor :events_retention
    attr_accessor :medium_duration_range

    def initialize
      @sample_rates = {
        'process_action.action_controller' => 2,
        'perform.active_job' => 100
      }
      @events_retention = 1.week
      @medium_duration_range = [200, 999]
    end
  end
end
