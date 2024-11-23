module InnerPerformance
  class DashboardController < ApplicationController
    def index
      @q = InnerPerformance::Event.all.ransack(params[:q])
      @q.sorts = "created_at desc" if @q.sorts.empty?
      @recent_events = @q.result.page(params[:page])

      @average_req_duration = InnerPerformance::Event.all
                                                     .where(event: 'process_action.action_controller')
                                                     .average(:duration)

      @average_job_duration = InnerPerformance::Event.all
                                                     .where(event: 'perform.active_job')
                                                     .average(:duration)

      @biggest_events = InnerPerformance::Event.select('SUM(duration) as duration, name, COUNT(*) as count')
                                               .group(:name)
                                               .order('duration DESC')
                                               .limit(10)
    end
  end
end
