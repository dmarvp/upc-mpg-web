class AddDescriptionToRecurrentTransactions < ActiveRecord::Migration
  def change
    add_column :recurrent_transactions, :description, :text
  end
end
