class AddPropertiesToInnerPerformanceEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :inner_performance_events, :properties, :text, default: '{}'
  end
end
