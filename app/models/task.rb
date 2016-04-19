class Task < ActiveRecord::Base
	belongs_to :point_task
	belongs_to :element, polymorphic: true
end
