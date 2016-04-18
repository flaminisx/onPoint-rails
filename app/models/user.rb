class User < ActiveRecord::Base
	has_many :user_quests
	has_many :quests, througth: :user_quests
end
