module InnerPerformance
  class CleanupJob < ApplicationJob
    def perform
      InnerPerformance::Event.where('created_at >= ?', InnerPerformance.configuration.keep_events_for)
    end
  end
end
