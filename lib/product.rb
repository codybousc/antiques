class Product < ActiveRecord::Base
  belongs_to(:purchase)

  scope(:not_done, -> do
    where({:done => false})
  end)


end
