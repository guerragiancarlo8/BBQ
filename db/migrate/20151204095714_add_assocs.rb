class AddAssocs < ActiveRecord::Migration
  def change
  	rename_column :users, :bbq_id, :barbecue_id
  end
end
