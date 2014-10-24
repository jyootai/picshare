class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.integer :album_id
      t.string :title
      t.string :description
      t.integer :catigory_id
      t.string :tag
      t.datetime :time
			t.boolean  :is_public

      t.timestamps
    end
		add_index :photos, :user_id
		add_index :photos, :album_id
		add_index :photos, :title
		add_index :photos, :catigory_id
		add_index :photos, :tag
  end
end
