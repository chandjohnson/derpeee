class CreateBricks < ActiveRecord::Migration
  def change
    create_table :bricks do |t|
      t.text :string

      t.timestamps null: false
    end
  end
end
