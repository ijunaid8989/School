class LevelsController < ApplicationController
  def new
  	@level = Level.new
  end
end
