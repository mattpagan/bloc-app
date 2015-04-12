class CreatePosttests < ActiveRecord::Migration
  def change
    create_table :posttests do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
