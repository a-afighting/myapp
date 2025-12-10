class CreateBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :boards do |t|
      t.timestamps
      t.string :tittle, null: false
      t.text :description
    end
  end
end
