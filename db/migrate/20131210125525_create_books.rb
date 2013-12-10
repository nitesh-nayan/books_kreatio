class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :file
      t.string :author
      t.string :upload_date
      t.string :created_by

      t.timestamps
    end
  end
end
