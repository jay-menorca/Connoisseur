require 'open-uri'

class ProductsController < ApplicationController

	def index
		#products_json = open('http://lcboapi.com/products?page=1').read
		products_json = open('http://lcboapi.com/products').read
		@products = JSON.parse(products_json)
		@tot_count = @products.length
	end

	def show
		url = "http://lcboapi.com/products/" + params[:id]
		product_json = open(url).read
		@product = JSON.parse(product_json)
	end

end
