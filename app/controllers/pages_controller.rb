class PagesController < ApplicationController
	protect_from_forgery with: :exception  

	protect_from_forgery unless: -> { request.format.json? }  

	def new 
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
    	# render json: {
		   #    blinks: @pages.length
		   #  }.to_json
  	end

	def show
	    @page = Page.find(params[:id])
	end

	def create
	  	print("in create #{Time.now}")
	  @page = Page.new(params.permit(:title))
 	  @currentTime = Time.now
	  
	  print("the #{@page.title}")
	  
	  @page.save
	  render json: {response: @page.title}
	  # redirect_to pages_path, time: Time.now
	end

end

