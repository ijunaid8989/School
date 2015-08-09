class SubjectsController < ApplicationController
  def new
  	@subject = Subject.new
  	@allevel = Level.all
  end

  def create
  	@levelid = params.require(:subject).permit(:level_id)[:level_id]
  	@subjects = params.require(:subject).permit(:name)[:name]

  	@divide = @subjects.split(",")

  	@divide.each do |single|
  		Subject.create!(name: single,level_id: @levelid)
  	end
  	redirect_to "/addsubject"
  end

end
