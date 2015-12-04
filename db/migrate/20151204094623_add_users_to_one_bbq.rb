class AddUsersToOneBbq < ActiveRecord::Migration
  def change
  	add_column :users, :bbq_id, :integer, :references => "barbecues" 
  end
end
