class PointTask < ActiveRecord::Base
	has_many :tasks, autosave: true
	has_many :photo_tasks, through: :tasks, source: :element,
	                      source_type: 'PhotoTask'
	has_many :text_tasks, through: :tasks, source: :element,
	                      source_type: 'TextTask'
end
