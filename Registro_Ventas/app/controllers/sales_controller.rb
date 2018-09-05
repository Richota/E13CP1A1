class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    # Incluir lógica de negocio
    if @sale.save!
      redirect_to sales_done_path
    else
      redirect_to sales_new_path
    end
  end

  def done

  end

  private

  def sale_params
    params.require(:sale).permit(
      :cod,
      :detail,
      :value
    )
  end
end
