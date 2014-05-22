class ApplicationcommentController < ApplicationController
	def index
@applicationcomment=Applicationcomment.new
@feedback=Feedback.new
end

def create
	@applicationcomment = Applicationcomment.new(applicationcomment_params)
    
   if @applicationcomment.save
   	redirect_to applicationcomment_path
   else
   	render 'applicationcomment/index'
   end

  
end
 private
  def applicationcomment_params
    params.require(:applicationcomment).permit(:feedback,:comment)
  end
end


