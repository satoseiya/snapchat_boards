class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, :null => false
      t.string :description, :null => false
      t.string :age
      t.string :sex
      t.string :prefecture
      t.string :snapchat_name

      t.timestamps null: false
    end
  end
end
