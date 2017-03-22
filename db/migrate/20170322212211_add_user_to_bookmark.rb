class AddUserToBookmark < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :user_id, :string
  end
end
