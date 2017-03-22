class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.string :top_level_domain

      t.timestamps
    end
  end
end
