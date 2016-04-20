class PointTask < ActiveRecord::Base
	belongs_to :this_cp, class_name: "Checkpoint"
	belongs_to :next_cp, class_name: "Checkpoint"

	has_many :tasks, autosave: true
	has_many :photo_tasks, through: :tasks, source: :element,
	                       source_type: 'PhotoTask'
	has_many :text_tasks, through: :tasks, source: :element,
	                      source_type: 'TextTask'
end
