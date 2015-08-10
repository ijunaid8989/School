class DrupsController < ApplicationController
  def new
  	@drup = Drup.new
  	@allevel = Level.all
  end
  def create
  	@drup = Drup.new(params_drup)
  	if @drup.save
  		redirect_to "/addclass"
  	end
  end

private
def params_drup
	params.require(:drup).permit(:name,:level_id)
end
end
