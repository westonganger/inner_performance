module InnerPerformance
  class SaveEventJob < ApplicationJob
    def perform(created_at, event, name, format, duration, view_runtime, db_runtime)
      InnerPerformance::Event.create(
        created_at: created_at,
        event: event,
        name: name,
        format: format,
        duration: duration,
        view_runtime: view_runtime,
        db_runtime: db_runtime
      )
    end
  end
end
