class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer     :goal_money
      t.string      :goal_goods
      t.references  :memory,      null: false,  foreign_key: true

      t.timestamps
    end
  end
end
