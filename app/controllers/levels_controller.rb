class LevelsController < ApplicationController
  def new
  	@level = Level.new
  	@alevel = Level.all()
  end

  def create
  	@level = Level.new(level_params)
  	if @level.save
  		redirect_to '/addlevel'
  	end
  end

private

def level_params
	params.require(:level).permit(:name)
end

end
