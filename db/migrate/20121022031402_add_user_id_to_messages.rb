class AddUserIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_id, :integer, :null => false
    add_index :messages, :user_id
  end
end
