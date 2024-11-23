class RemoveViewRuntimeFromInnerPerformanceEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :inner_performance_events, :view_runtime, :decimal
  end
end
