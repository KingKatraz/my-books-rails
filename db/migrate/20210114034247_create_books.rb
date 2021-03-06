class CreateBooks < ActiveRecord::Migration[6.1]
  def up
    create_table :books do |t|
      t.string :title
      t.string :author
      t.belongs_to :user
      t.belongs_to :genre

      t.timestamps
    end
  end

  def down
    drop_table :books
  end 
end
