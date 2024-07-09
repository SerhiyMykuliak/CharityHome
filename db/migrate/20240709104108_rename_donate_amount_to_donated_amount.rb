class RenameDonateAmountToDonatedAmount < ActiveRecord::Migration[7.1]
  def change

    rename_column :causes, :donate_amount, :donated_amount
    change_column_default :causes, :donated_amount, 0.00

  end
end
