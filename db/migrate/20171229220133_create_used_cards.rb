class CreateUsedCards < ActiveRecord::Migration[5.1]
  def change
    create_table :used_cards do |t|
      t.string :sign
      t.string :value

      t.timestamps
    end
  end
end
