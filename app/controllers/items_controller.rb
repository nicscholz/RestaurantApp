class ItemsController < ApplicationController
   def index
   @items = Item.all
 end

 def create
   items = Item.create(item_params)
   if items.save
     redirect_to items_path
   else
   flash[:error] = items.errors.full_messages
   redirect_to new_items_path
   end
 end

 def new
   @items = Item.new
 end

 def update
   items = Item.find(params[:id])
   if items.update(item_params)
     redirect_to items_path
   else
     flash[:error] = items.errors.full_messages
     redirect_to edit_items_path(items.id)
   end
 end

 def edit
   @items = Item.find(params[:id])
 end

 def show
   @items = Item.find(params[:id])
 end

 def destroy
   Item.delete(params[:id])
   redirect_to 'admins/menu'
 end

private
 def item_params
   params.require(:item).permit(:name, :price, :description)
 end

end
