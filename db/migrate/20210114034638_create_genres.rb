class CreateGenres < ActiveRecord::Migration[6.1]
  def up
    create_table :genres do |t|
      t.string :type
      t.timestamps
    end
  end

  def down 
    drop_table :genres
  end 
end
