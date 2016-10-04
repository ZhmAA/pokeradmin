class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :title
      t.datetime :gamestart
      t.integer :players, default: 0
      t.timestamps
    end
  end
end
