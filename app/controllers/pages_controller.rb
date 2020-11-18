class PagesController < ApplicationController
	protect_from_forgery with: :exception  

	protect_from_forgery unless: -> { request.format.json? }  

	def new 
	end

	def index
    	@pages = Page.all
  	end

	def show
	    @page = Page.find(params[:id])
	end

	def create
	  @page = Page.new(params.permit(:title))
 
	  @page.save
	  redirect_to @page
	end

end

