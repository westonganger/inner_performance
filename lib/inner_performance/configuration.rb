# frozen_string_literal: true

module InnerPerformance
  class Configuration
    attr_accessor :sample_rates, :events_retention, :medium_duration_range, :ignore_rules

    def initialize
      @sample_rates = {
        "process_action.action_controller" => 2,
        "perform.active_job" => 100,
      }
      @events_retention = 1.week
      @medium_duration_range = [200, 999]
      @ignore_rules = [
        proc { |event| rand(100) > InnerPerformance.configuration.sample_rates[event.name.to_s] },
      ]
    end
  end
end
