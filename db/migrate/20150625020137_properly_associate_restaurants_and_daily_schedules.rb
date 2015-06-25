class ProperlyAssociateRestaurantsAndDailySchedules < ActiveRecord::Migration
  def change
    remove_column :restaurants, :daily_schedule_id, :integer
    remove_column :daily_schedules, :restaurant_id, :integer
    add_reference :daily_schedules, :restaurant, index: true
  end
end
