module InnerPerformance
  module ApplicationHelper
    # Based on https://stackoverflow.com/a/45428183/552936
    def row_class_from_duration(duration)
      if duration.between?(101, 1000)
        'text-warning'
      elsif duration >= 1000
        'text-danger'
      end
    end
  end
end
