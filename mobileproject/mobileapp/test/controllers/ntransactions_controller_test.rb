require 'test_helper'

class NtransactionsControllerTest < ActionController::TestCase
  setup do
    @ntransaction = ntransactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ntransactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ntransaction" do
    assert_difference('Ntransaction.count') do
      post :create, ntransaction: { amount: @ntransaction.amount, category_id: @ntransaction.category_id, customer_id: @ntransaction.customer_id, datetransaction: @ntransaction.datetransaction, description: @ntransaction.description, transactiontype: @ntransaction.transactiontype }
    end

    assert_redirected_to ntransaction_path(assigns(:ntransaction))
  end

  test "should show ntransaction" do
    get :show, id: @ntransaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ntransaction
    assert_response :success
  end

  test "should update ntransaction" do
    patch :update, id: @ntransaction, ntransaction: { amount: @ntransaction.amount, category_id: @ntransaction.category_id, customer_id: @ntransaction.customer_id, datetransaction: @ntransaction.datetransaction, description: @ntransaction.description, transactiontype: @ntransaction.transactiontype }
    assert_redirected_to ntransaction_path(assigns(:ntransaction))
  end

  test "should destroy ntransaction" do
    assert_difference('Ntransaction.count', -1) do
      delete :destroy, id: @ntransaction
    end

    assert_redirected_to ntransactions_path
  end
end
