class RemoveNameFromPurchases < ActiveRecord::Migration
  def change
    remove_column(:purchases, :name, :string)
  end
end
