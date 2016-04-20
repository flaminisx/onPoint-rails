class PointTask < ActiveRecord::Base
	belongs_to :this_cp, class_name: "Checkpoint"
	belongs_to :next_cp, class_name: "Checkpoint"

	belongs_to :task, autosave: true
	has_one :photo_task, through: :task, source: :element,
	                       source_type: 'PhotoTask'
	has_one :text_task, through: :task, source: :element,
	                      source_type: 'TextTask'
end
