class NormalPaymentsController < ApplicationController
  before_action :set_normal_payment, only: %i[ show edit update destroy ]

  # GET /normal_payments or /normal_payments.json
  def index
    @normal_payments = NormalPayment.all
  end

  # GET /normal_payments/1 or /normal_payments/1.json
  def show
  end

  # GET /normal_payments/new
  def new
    @normal_payment = NormalPayment.new
  end

  # GET /normal_payments/1/edit
  def edit
  end

  # POST /normal_payments or /normal_payments.json
  def create
    @normal_payment = NormalPayment.new(normal_payment_params)

    respond_to do |format|
      if @normal_payment.save
        format.html { redirect_to normal_payment_url(@normal_payment), notice: "Normal payment was successfully created." }
        format.json { render :show, status: :created, location: @normal_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @normal_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /normal_payments/1 or /normal_payments/1.json
  def update
    respond_to do |format|
      if @normal_payment.update(normal_payment_params)
        format.html { redirect_to normal_payment_url(@normal_payment), notice: "Normal payment was successfully updated." }
        format.json { render :show, status: :ok, location: @normal_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @normal_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normal_payments/1 or /normal_payments/1.json
  def destroy
    @normal_payment.destroy

    respond_to do |format|
      format.html { redirect_to normal_payments_url, notice: "Normal payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_normal_payment
      @normal_payment = NormalPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def normal_payment_params
      params.fetch(:normal_payment, {})
    end
end
