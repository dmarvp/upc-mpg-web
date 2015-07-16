class RecurrentTransactionsController < ApplicationController
  before_action :set_recurrent_transaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /recurrent_transactions
  # GET /recurrent_transactions.json
  def index
    @recurrent_transactions = RecurrentTransaction.all
  end

  # GET /recurrent_transactions/1
  # GET /recurrent_transactions/1.json
  def show
  end

  # GET /recurrent_transactions/new
  def new
    @recurrent_transaction = RecurrentTransaction.new
  end

  # GET /recurrent_transactions/1/edit
  def edit
  end

  # POST /recurrent_transactions
  # POST /recurrent_transactions.json
  def create
    @recurrent_transaction = RecurrentTransaction.new(recurrent_transaction_params)

    respond_to do |format|
      if @recurrent_transaction.save
        format.html { redirect_to @recurrent_transaction, notice: 'Recurrent transaction was successfully created.' }
        format.json { render :show, status: :created, location: @recurrent_transaction }
      else
        format.html { render :new }
        format.json { render json: @recurrent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recurrent_transactions/1
  # PATCH/PUT /recurrent_transactions/1.json
  def update
    respond_to do |format|
      if @recurrent_transaction.update(recurrent_transaction_params)
        format.html { redirect_to @recurrent_transaction, notice: 'Recurrent transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @recurrent_transaction }
      else
        format.html { render :edit }
        format.json { render json: @recurrent_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recurrent_transactions/1
  # DELETE /recurrent_transactions/1.json
  def destroy
    @recurrent_transaction.destroy
    respond_to do |format|
      format.html { redirect_to recurrent_transactions_url, notice: 'Recurrent transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recurrent_transaction
      @recurrent_transaction = RecurrentTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recurrent_transaction_params
      params.require(:recurrent_transaction).permit(:startdate, :enddate, :period_id, :nextdate, :customer_id)
    end
end
