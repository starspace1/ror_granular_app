class TransferHoursColumnToDailySchedules < ActiveRecord::Migration
  def change
    Restaurant.all.each do |restaurant|
      %w[Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].each do |day|
        if restaurant.hours[day]
          restaurant.daily_schedules.create(day: day, open: restaurant.hours[day]["Open"], close: restaurant.hours[day]["Closed"])
        end
      end
    end
  end
end
