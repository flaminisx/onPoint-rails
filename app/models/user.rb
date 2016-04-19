class User < ActiveRecord::Base
	has_many :user_quests
	has_many :quests, through: :user_quests
end
