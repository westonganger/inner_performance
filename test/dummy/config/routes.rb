Rails.application.routes.draw do
  mount InnerPerformance::Engine => "/inner_performance"
end
