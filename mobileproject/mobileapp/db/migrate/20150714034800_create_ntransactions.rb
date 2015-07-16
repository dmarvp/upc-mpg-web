class CreateNtransactions < ActiveRecord::Migration
  def change
    create_table :ntransactions do |t|
      t.datetime :datetransaction
      t.integer :transactiontype
      t.decimal :amount
      t.text :description
      t.references :category, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
