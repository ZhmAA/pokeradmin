class JoinTableForUserTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :tables do |t|
      t.index [:user_id, :table_id]
      t.index [:table_id, :user_id]
    end
  end
end
