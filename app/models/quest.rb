class Quest < ActiveRecord::Base
	has_many :user_quests
	has_many :users, through: :user_quests
#   	belongs_to :start, class_name: "Checkpoint"
    has_one :checkpoint
	has_many :checkpoints
end
