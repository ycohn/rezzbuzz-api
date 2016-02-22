class RemoveAuth < ActiveRecord::Migration
  def change
    remove_column :users, :authentication_token, :string, index: true
  end
end
