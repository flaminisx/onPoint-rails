class Checkpoint < ActiveRecord::Base
	belongs_to :quest
	# has_one :start_quest, foreign_key: "start_id" 
	has_one :parent, class_name: "Checkpoint",
	                 foreign_key: "parent_id"
	belongs_to :parent, class_name: "Checkpoint"
end
