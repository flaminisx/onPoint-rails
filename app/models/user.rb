class User < ActiveRecord::Base
	has_many :user_quests
	has_many :quests, through: :user_quests
	has_secure_password
    validates_uniqueness_of :email
end
