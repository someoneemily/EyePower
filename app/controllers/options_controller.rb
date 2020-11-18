class OptionsController < ApplicationController
	protect_from_forgery with: :exception  

	protect_from_forgery unless: -> { request.format.json? }  

	def new 
	end

	def index
    	@options = Option.all
  	end

	def show
	    @option = Option.find(params[:id])
	end

	def create
	  @option = Option.new()
 
	  @option.save
	  redirect_to @option
	end

end
