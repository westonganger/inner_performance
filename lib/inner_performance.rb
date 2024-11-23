require "inner_performance/version"
require "inner_performance/engine"
require "inner_performance/configuration"

module InnerPerformance
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
