class RemoveTransactiontypeFromNtransactions < ActiveRecord::Migration
  def change
    remove_column :ntransactions, :transactiontype, :integer
  end
end
