class DebtsController < ApplicationController
  def index
    @debts = Debt.all
  end

  def show
    @debt = Debt.find(params[:id])
  end

  def new
    @debt = Debt.new
  end

  def edit
    @debt = Debt.find(params[:id])
  end

  def create
    @debt = Debt.new(params[:debt])

    if @debt.save
      flash[:notice] = 'Debt was successfully created.'
      redirect_to(@debt)
    end
  end

  def update
    @debt = Debt.find(params[:id])

    if @debt.update_attributes(params[:debt])
      flash[:notice] = 'Debt was successfully updated.'
      redirect_to(@debt)
    end
  end

  def destroy
    @debt = Debt.find(params[:id])
    @debt.destroy

    redirect_to(debts_url)
  end
end
