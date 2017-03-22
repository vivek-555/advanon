class AddWebsiteToBookmark < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :website_id, :string
  end
end
