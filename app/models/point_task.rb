class PointTask < ActiveRecord::Base
	belongs_to :this_cp, class_name: "Checkpoint"
	belongs_to :next_cp, class_name: "Checkpoint"

	belongs_to :task, autosave: true
	has_one :photoTask, through: :task, source: :element,
	                       source_type: 'PhotoTask'
	has_one :textTask, through: :task, source: :element,
	                      source_type: 'TextTask'
	has_one :gameTask, through: :task, source: :element,
	                      source_type: 'GameTask'
	has_one :markerTask, through: :task, source: :element,
	                       source_type: 'MarkerTask'
	has_one :deviceTask, through: :task, source: :element,
	                      source_type: 'DeviceTask'
end
