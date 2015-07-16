class CreateRecurrentTransactions < ActiveRecord::Migration
  def change
    create_table :recurrent_transactions do |t|
      t.date :startdate
      t.date :enddate
      t.references :period, index: true, foreign_key: true
      t.date :nextdate
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
