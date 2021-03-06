class PagesController < ApplicationController
	protect_from_forgery with: :exception  

	protect_from_forgery unless: -> { request.format.json? }  

	def new 
		# @pages = Page.all
	end

	def index
    	@pages = Page.all
    	if params[:time]
    		print "here!"
    		@time = params[:time]
    	else
    		print "not here"
    		@time = 1
    	end
    	if(@pages.length>0)
    		render json: {
		      response: @pages[-1].title,
		      blinks:@pages.length
		    }.to_json
		else 
			render json: {
		      response: "",
		      blinks:@pages.length
		    }.to_json

		end
  	end

	def show
	    @page = Page.find(params[:id])
	end

	def create
	  	print("in create #{Time.now}")
	  @page = Page.new(params.require(:page).permit(:title))
 	  @currentTime = Time.now
	  
	  print("the #{@page.title}")
	  
	  @page.save
	  render json: {response: @page.title}
	  # redirect_to pages_path
	end

end

