class Quest < ActiveRecord::Base
	has_many :user_quests
	has_many :users, through: :user_quests
#   	belongs_to :start, class_name: "Checkpoint"
    has_one :start, -> { where(id: start_id)},
                    class_name: "Checkpoint"
	has_many :checkpoints
end
