class AddReadToConversations < ActiveRecord::Migration
  def change
    add_column :conversations, :read, :boolean
  end
end
