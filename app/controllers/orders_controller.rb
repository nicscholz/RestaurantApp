class OrdersController < ApplicationController
   def index
    @order = Order.new
    @orders = Order.all
 end

 def create
    Order.create(order_params)
    redirect_to orders_path
 end

 def new
    @order = Order.new
    @orders = Order.all
 end

 def show
    @order= Order.find(params[:id])
 end

def update
    order= Order.find(params[:id])
    order.update(order_params)
    redirect_to "/orders/#{order.id}"
 end

 def destroy
    Order.delete(params[:id])
    redirect_to orders_path
 end

 def chef

 end

 private

 def order_params
    params.require(:order).permit(:party_id, :item_id)
 end

end
