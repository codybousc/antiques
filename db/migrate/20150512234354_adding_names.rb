class AddingNames < ActiveRecord::Migration
  def change
    add_column(:purchases, :name, :string)
  end
end
