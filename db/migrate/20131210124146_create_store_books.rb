class CreateStoreBooks < ActiveRecord::Migration
  def change
    create_table :store_books do |t|

      t.timestamps
    end
  end
end
