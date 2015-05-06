class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summary do |t|
      t.string :name
      t.timestamps null: false
  	end
  end
end