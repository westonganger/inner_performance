InnerPerformance::Engine.routes.draw do
  mount InnerPerformance::Engine, at: '/performance'

  resources :events, only: [:index]

  root to: "dashboard#index"
end
