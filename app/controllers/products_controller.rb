class ProductsController < ApplicationController
	
	def index
		if !params[:search].blank?
	    @products = Product.where("name like ?", "%#{params[:search]}%")		
		elsif params[:category].blank?
		@products = Product.all.order("created_at DESC")
		else
		@category_id = Category.find_by(name: params[:category]).id
		@products = Product.where(:category_id => @category_id).order("created_at DESC")
		end
		@cart = Cart.where(:user_id=>current_user.id ).sum(:quantity) if current_user
	end
	def preview
		@product = Product.find_by_id(params[:id])
    end


end
