class AddNumberToMonster < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :number, :integer
    add_index :monsters, :number
  end
end
