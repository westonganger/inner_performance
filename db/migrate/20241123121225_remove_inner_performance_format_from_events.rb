class RemoveInnerPerformanceFormatFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :inner_performance_events, :format, :string
  end
end
