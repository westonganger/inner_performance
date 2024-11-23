module InnerPerformance
  class DashboardController < ApplicationController
    def index
      @q = InnerPerformance::Event.all.ransack(params[:q])
      @recent_events = @q.result.page(params[:page])
      @average_duration = InnerPerformance::Event.all.average(:duration)
      @biggest_events = InnerPerformance::Event.select('SUM(duration) as duration, name, COUNT(*) as count').group(:name).order('duration DESC')
    end
  end
end
