class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.integer    :money,      null: false
      t.string     :goods_name, null: false
      t.references :user,       null: false, foreign_key: true 

      t.timestamps
    end
  end
end
