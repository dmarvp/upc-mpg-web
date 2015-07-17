class AddNumberOfMonthsToPeriods < ActiveRecord::Migration
  def change
    add_column :periods, :numberOfMonths, :integer
  end
end
