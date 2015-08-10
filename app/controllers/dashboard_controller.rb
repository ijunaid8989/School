class DashboardController < ApplicationController

	before_filter :authorize

  def index
  	@subs = Subject.find_by_level_id(8)
  end
end
