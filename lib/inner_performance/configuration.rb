module InnerPerformance
  class Configuration
    attr_accessor :sample_rates
    attr_accessor :keep_events_for

    def initialize
      @sample_rates = {
        'process_action.action_controller' => 2,
        'perform.active_job' => 100
      }
      @keep_events_for = 1.week
    end
  end
end
