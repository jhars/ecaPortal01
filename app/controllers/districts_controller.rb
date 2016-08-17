class DistrictsController < ApplicationController
	
	def index
		respond_to do |format|
			format.html
			format.json { @districts = District.search(params[:term])}
		end
	end

	def new
	end

end
