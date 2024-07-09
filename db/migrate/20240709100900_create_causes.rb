class CreateCauses < ActiveRecord::Migration[7.1]
  def change
    create_table :causes do |t|
      t.string :title
      t.string :description
      t.integer :donate_amount
      t.integer :goal_amount

      t.timestamps
    end
  end
end
