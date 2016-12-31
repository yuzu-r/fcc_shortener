class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url

      t.timestamps null: false
    end
    add_index :urls, :long_url, unique: true
  end
end
