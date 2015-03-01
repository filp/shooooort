class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.string :full_url, null: false
      t.string :short_code, null: false
      t.integer :times_visited, null: false, default: 0
      t.datetime :last_visited_at

      t.timestamps null: false

      t.index :short_code
      t.index :times_visited
    end
  end
end
