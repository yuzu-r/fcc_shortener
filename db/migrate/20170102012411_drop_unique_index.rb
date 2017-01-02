class DropUniqueIndex < ActiveRecord::Migration
  def change
    remove_index :urls, :long_url
  end
end
