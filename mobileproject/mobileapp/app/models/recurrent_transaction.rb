# == Schema Information
#
# Table name: recurrent_transactions
#
#  id          :integer          not null, primary key
#  startdate   :date
#  enddate     :date
#  period_id   :integer
#  nextdate    :date
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RecurrentTransaction < ActiveRecord::Base
  belongs_to :period
  belongs_to :customer
end
