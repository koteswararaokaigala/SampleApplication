class CartsController < ApplicationController


   def add_to_cart
  item = Cart.find_by_product_id_and_user_id(params[:product_id].to_i,params[:user_id].to_i)
    if item
    	item.update_attributes(:quantity=> item.quantity+1)
    else
       Cart.create!(:product_id=>params[:product_id].to_i,:user_id=>params[:user_id] ,:quantity=>1,:created_at=> Date.today,:updated_at=>Date.today)
     end
     redirect_to :controller => 'products' ,:action=>'index'

    
   end
end
