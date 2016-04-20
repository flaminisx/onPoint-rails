class Checkpoint < ActiveRecord::Base
	belongs_to :quest
	has_one :quest
	has_many :user_quests
	has_many :pointTasks, class_name: "PointTask", 
	                      foreign_key: :this_cp_id
	has_one :parent, class_name: "Checkpoint"
	belongs_to :parent, class_name: "Checkpoint"
end
