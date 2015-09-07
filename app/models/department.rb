class Department < ActiveRecord::Base
	has_many :staffers
end
