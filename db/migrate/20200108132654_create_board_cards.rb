class CreateBoardCards < ActiveRecord::Migration[6.0]
  def change
    create_table :board_cards do |t|
      t.references :board, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
