class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    # Incluir logica de negocio
    # @total = @sale.value - @sale.discount
    @sale.save
    redirect_to sales_done_path
  end

  def done
    @sale = Sale.last
  end

  private

  def sale_params
    params.require(:sale).permit(
      :cod,
      :detail,
      :category,
      :value,
      :discount
    )
  end
end
