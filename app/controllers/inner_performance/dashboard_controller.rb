module InnerPerformance
  class DashboardController < ApplicationController
    def index
      @q = InnerPerformance::Event.all.ransack(params[:q])
      @q.sorts = "created_at desc" if @q.sorts.empty?
      @recent_events = @q.result.limit(100)

      @average_req_duration = InnerPerformance::Events::ProcessActionActionController.all.average(:duration)
      @average_job_duration = InnerPerformance::Events::PerformActiveJob.average(:duration) || 0
      @biggest_events = \
        InnerPerformance::Event.select('SUM(duration) as duration, name, COUNT(*) as count, AVG(duration) as avg_duration')
                               .group(:name)
                               .order('duration DESC')
                               .limit(10)
    end
  end
end
