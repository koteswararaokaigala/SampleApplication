class ProductsController < ApplicationController
	def index
		
		render :json =>{message: "The Abcd"},status: 200
	end
end
