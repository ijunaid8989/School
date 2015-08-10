class Level < ActiveRecord::Base
	has_many :subjects
	belongs_to :drup
end
