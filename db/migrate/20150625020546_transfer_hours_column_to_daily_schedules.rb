class TransferHoursColumnToDailySchedules < ActiveRecord::Migration
  def change
    Restaurant.all.each do |restaurant|
      restaurant.hours.each do |key, value|
        restaurant.daily_schedules.create(day: key, open: value["Open"], close: value["Closed"])
      end
    end
  end
end
