class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products) do |t|
      t.column(:description, :string)
      t.column(:purchase_id, :integer)

      t.timestamps()
    end
  end
end
