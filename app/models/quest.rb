class Quest < ActiveRecord::Base
	has_many :user_quests
	has_many :users, througth: :user_quests
  	belongs_to :start, class_name: "Checkpoint", 
                       foreign_key: "start_id"
	has_many :checkpoints
end
