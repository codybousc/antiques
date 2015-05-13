class RemoveTimeDateFromPurchases < ActiveRecord::Migration
  def change
    remove_column(:purchases, :time_date, :datetime)
  end
end
