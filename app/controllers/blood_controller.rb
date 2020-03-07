class BloodController < ApplicationController

	def index
		@blood=Blood.all
	end
  
	def new
	end

	def create
  		@blood=Blood.new(blood_params)
 	 	if @blood.save
    	redirect_to "/blooddetails"
  		else
    	flash[:errors]=@blood.errors.full_messages
    	redirect_to "/blooddetails/error"
  		end
	end
	
	def edit()
		@p=Blood.find(params[:id])
	end

	def update
	  	@blood=Blood.find(params[:id])
 	 	if @blood.update(blood_params)
    	redirect_to "/blooddetails"
  		else
    	flash[:errors]=@blood.errors.full_messages
    	redirect_to "/blooddetails/error"
		end
	end

def destroy
    @speaker = Blood.find(params[:id])
    @speaker.destroy
    redirect_to "/blooddetails"
end	

def error
end

def show
   @p=Blood.find(params[:id])
end

private
  def blood_params
    params.require(:blood).permit(:name,:age,:bgroup,:gender,:contact)
  end

end


