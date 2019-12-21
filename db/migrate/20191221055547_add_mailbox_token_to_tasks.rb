class AddMailboxTokenToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :mailbox_token, :string, index: { unique: true }
  end
end
