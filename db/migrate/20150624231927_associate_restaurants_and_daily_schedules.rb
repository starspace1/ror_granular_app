class AssociateRestaurantsAndDailySchedules < ActiveRecord::Migration
  def change
    add_column :restaurants, :daily_schedule_id, :integer
    add_column :daily_schedules, :restaurant_id, :integer
  end
end
