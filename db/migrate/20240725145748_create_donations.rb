class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :stripe_charge_id

      t.timestamps
    end
  end
end
