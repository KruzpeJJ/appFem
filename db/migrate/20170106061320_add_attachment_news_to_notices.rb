class AddAttachmentNewsToNotices < ActiveRecord::Migration
  def self.up
    change_table :notices do |t|
      t.attachment :news
    end
  end
  # 
  # def self.down
  #   remove_attachment :notices, :news
  # end
end
