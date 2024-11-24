module InnerPerformance
  class Engine < ::Rails::Engine
    isolate_namespace InnerPerformance

    initializer 'inner_performance.install' do
      InnerPerformance.install!
    end
  end
end
