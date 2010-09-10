class PaymentsController < ApplicationController
  before_filter :authorize

  def index
    @payments = Payment.find(:all, :order => "paid_on DESC")
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @payment = Payment.new
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def create
    @payment = Payment.new(params[:payment])

    if @payment.save
      flash[:notice] = 'Payment was successfully created.'
      redirect_to(@payment)
    end
  end

  def update
    @payment = Payment.find(params[:id])

    if @payment.update_attributes(params[:payment])
      flash[:notice] = 'Payment was successfully updated.'
      redirect_to(@payment)
    end
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    redirect_to(payments_url)
  end
end
