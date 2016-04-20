class User < ActiveRecord::Base
	has_many :user_quests
	has_many :quests, through: :user_quests
	has_secure_password
    validates_uniqueness_of :email


    @@delta = 10
    
    def self.xp_from_level(level)
      if level >= 2
        xp = @@delta / 2 * (level + 2) * (level - 1)
      else
        xp = 0
      end
      return xp
    end
    
    def self.level_from_xp(xp)
      level = 0
      index = 2
      while xp >= 0
        xp -= index * @@delta;
        level += 1;
        index += 1;
      end
      return level
    end

    def level
        return self.class.level_from_xp(self.experience)
    end

    def progress
    	previous_xp = self.class.xp_from_level(self.level)
    	next_xp = self.class.xp_from_level(self.level + 1)
        return 100 * (self.experience - previous_xp) / (next_xp - previous_xp)
    end
end
