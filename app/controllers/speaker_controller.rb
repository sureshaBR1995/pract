
class SpeakerController < ApplicationController
	def index
		@speaker=Speaker.all
	end
  
	def new
	end

	def create
  		@speaker=Speaker.new(speaker_params)
 	 	if @speaker.save
    	redirect_to "/speakerdetails"
  		else
    	flash[:errors]=@speaker.errors.full_messages
    	redirect_to "/speakerdetails/error"
  		end
	end
	
	def edit
	@p=Speaker.find(params[:id])
	end

	def update
	  	@speaker=Speaker.find(params[:id])
 	 	if @speaker.update(speaker_params)
    	redirect_to "/speakerdetails"
  		else
    	flash[:errors]=@speaker.errors.full_messages
    	redirect_to "/speakerdetails/error"
		end
	end

def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
    redirect_to "/speakerdetails"
end	

def error
end

def show
   @p=Speaker.find(params[:id])
end

private
  def speaker_params
    params.require(:speaker).permit(:model,:brand,:price)
  end

end

