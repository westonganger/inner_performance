class CreateInnerPerformanceEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :inner_performance_events do |t|
      t.string :event
      t.string :name
      t.string :format
      t.decimal :duration
      t.decimal :view_runtime
      t.decimal :db_runtime

      t.timestamps
    end
  end
end
