class RemoveRecipientFromNotices < ActiveRecord::Migration[5.0]
  def change
    remove_column :notices, :recipient,:string 
  end
end
