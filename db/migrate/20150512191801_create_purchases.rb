class CreatePurchases < ActiveRecord::Migration
  def change
    create_table(:purchases) do |t|
      t.column(:time_date, :datetime)

      t.timestamps()
    end
  end
end
