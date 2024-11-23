module InnerPerformance
  class Event < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "db_runtime", "duration", "event", "format", "id" "name", "view_runtime"]
    end
  end
end
