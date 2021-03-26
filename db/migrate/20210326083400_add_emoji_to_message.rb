class AddEmojiToMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :emoji, :text
  end
end
