class Checkpoint < ActiveRecord::Base
	belongs_to :quest 
	has_one :parent, class_name: "Checkpoint"
	belongs_to :parent, class_name: "Checkpoint"
end
