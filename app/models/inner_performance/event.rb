module InnerPerformance
  class Event < ApplicationRecord
    serialize :properties, coder: JSON

    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "db_runtime", "duration", "event", "format", "id" "name"]
    end

    def self.ransackable_associations(auth_object = nil)
      []
    end
  end
end
