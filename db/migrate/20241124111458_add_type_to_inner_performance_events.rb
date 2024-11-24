class AddTypeToInnerPerformanceEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :inner_performance_events, :type, :string
  end
end
