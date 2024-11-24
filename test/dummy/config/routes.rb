Rails.application.routes.draw do
  mount InnerPerformance::Engine => "/performance"
end
