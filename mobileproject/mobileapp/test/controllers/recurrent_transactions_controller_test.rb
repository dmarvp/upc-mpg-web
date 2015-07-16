require 'test_helper'

class RecurrentTransactionsControllerTest < ActionController::TestCase
  setup do
    @recurrent_transaction = recurrent_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recurrent_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recurrent_transaction" do
    assert_difference('RecurrentTransaction.count') do
      post :create, recurrent_transaction: { customer_id: @recurrent_transaction.customer_id, enddate: @recurrent_transaction.enddate, nextdate: @recurrent_transaction.nextdate, period_id: @recurrent_transaction.period_id, startdate: @recurrent_transaction.startdate }
    end

    assert_redirected_to recurrent_transaction_path(assigns(:recurrent_transaction))
  end

  test "should show recurrent_transaction" do
    get :show, id: @recurrent_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recurrent_transaction
    assert_response :success
  end

  test "should update recurrent_transaction" do
    patch :update, id: @recurrent_transaction, recurrent_transaction: { customer_id: @recurrent_transaction.customer_id, enddate: @recurrent_transaction.enddate, nextdate: @recurrent_transaction.nextdate, period_id: @recurrent_transaction.period_id, startdate: @recurrent_transaction.startdate }
    assert_redirected_to recurrent_transaction_path(assigns(:recurrent_transaction))
  end

  test "should destroy recurrent_transaction" do
    assert_difference('RecurrentTransaction.count', -1) do
      delete :destroy, id: @recurrent_transaction
    end

    assert_redirected_to recurrent_transactions_path
  end
end
