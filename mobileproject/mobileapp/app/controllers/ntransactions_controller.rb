class NtransactionsController < ApplicationController
  before_action :set_ntransaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ntransactions
  # GET /ntransactions.json
  def index
    @ntransactions = Ntransaction.all
  end

  # GET /ntransactions/1
  # GET /ntransactions/1.json
  def show
  end

  # GET /ntransactions/new
  def new
    @ntransaction = Ntransaction.new
  end

  # GET /ntransactions/1/edit
  def edit
  end

  # POST /ntransactions
  # POST /ntransactions.json
  def create
    @ntransaction = Ntransaction.new(ntransaction_params)

    respond_to do |format|
      if @ntransaction.save
        format.html { redirect_to @ntransaction, notice: 'Ntransaction was successfully created.' }
        format.json { render :show, status: :created, location: @ntransaction }
      else
        format.html { render :new }
        format.json { render json: @ntransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ntransactions/1
  # PATCH/PUT /ntransactions/1.json
  def update
    respond_to do |format|
      if @ntransaction.update(ntransaction_params)
        format.html { redirect_to @ntransaction, notice: 'Ntransaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @ntransaction }
      else
        format.html { render :edit }
        format.json { render json: @ntransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ntransactions/1
  # DELETE /ntransactions/1.json
  def destroy
    @ntransaction.destroy
    respond_to do |format|
      format.html { redirect_to ntransactions_url, notice: 'Ntransaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ntransaction
      @ntransaction = Ntransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ntransaction_params
      params.require(:ntransaction).permit(:datetransaction, :transactiontype, :amount, :description, :category_id, :customer_id)
    end
end
