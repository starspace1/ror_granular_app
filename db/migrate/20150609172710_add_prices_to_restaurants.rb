class AddPricesToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :low_price, :integer
    add_column :restaurants, :high_price, :integer
  end
end
