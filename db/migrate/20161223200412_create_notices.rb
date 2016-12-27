class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|

      t.string :title, null: false
      t.string :recipient, null: false
      t.text   :text , null: false

      t.timestamps
    end
  end
end
