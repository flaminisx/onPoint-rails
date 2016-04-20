class UserQuest < ActiveRecord::Base
	belongs_to :user
	belongs_to :quest
	belongs_to :checkpoint
end
