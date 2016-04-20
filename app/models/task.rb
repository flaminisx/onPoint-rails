class Task < ActiveRecord::Base
	has_one :point_task
	belongs_to :element, polymorphic: true
end
