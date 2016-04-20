# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#
salt1 = BCrypt::Engine.generate_salt
salt2 = BCrypt::Engine.generate_salt
pass1 = BCrypt::Engine.hash_secret('password', salt1)
pass2 = BCrypt::Engine.hash_secret('password', salt2)
User.create(name: "Igor", surname: "Best", password_digest: pass1, salt: salt1, 
	        email:"optimum.flaminis@gmail.com", role:"client", avatar: "a1.jpg")
User.create(name: "Dann", surname: "Best", password_digest: pass2, salt: salt2, 
	        email:"anichindaniil@gmail.com", role:"admin", avatar: "ava2.jpg",
	        experience: 35, money: 20)
# Quest.create(name:"test Quest", description:"some description to show", 
# 	         reward: 10, experience: 10, price: 0, start_id: 1, downloads: 0, 
# 	         logo: "1.jpg")
Quest.create(name:"Dune", description:"Frenk Herbert's Dune world is waiting for you",
             reward: 15, experience: 15, price: 0, start_id: nil, downloads: 0,
	         logo: "dune-rider.jpg")
UserQuest.create(user_id: 1, quest_id: 1, checkpoint_id: 1)
UserQuest.create(user_id: 2, quest_id: 2, checkpoint_id: 2)
# Checkpoint.create(quest_id:1, parent_id: nil, description: "first checkpoint")
# Checkpoint.create(quest_id:1, parent_id: 1, description: "second")
# Checkpoint.create(quest_id:2, parent_id: nil, description: "first from second")
# Checkpoint.create(quest_id:2, parent_id: 3, description: "second second")

# TextTask.create(text: "RUA wizard?", answer: "Yep")
# PhotoTask.create(image: "Duke_of_?.jpg", answer: "flies")
# Task.create(element: TextTask.find(1), showable: true, 
# 	        description: "The Binding..")
# Task.create(element: PhotoTask.find(1), showable: true, 
# 	        description: "The Binding - 2..")
# PointTask.create(this_cp_id: 1, next_cp_id: nil, task_id: 1, order: 1)
# PointTask.create(this_cp_id: 1, next_cp_id: 2, task_id: 2, order: 2)

Quest.create(name:"Star Craft: episode I", description:"Story from the world-wide-known game "+
	         "the terrain story", 
	         reward: 10, experience: 15, price: 0, start_id: 1, downloads: 0, 
	         logo: "SC-logo.jpeg")  # 1
Checkpoint.create(quest_id: 1, parent_id: nil, description: "Who are you?") #1
PhotoTask.create(image: "jimmy-art.jpg", answer: "Jimmy Reynor")    # 1
Task.create(element: PhotoTask.find(1), showable: true, 
	        description: "You are the terrain sheriff on Mar-sara. "+
	        "Take a look on the photo - what is your full name?") # 1
PointTask.create(this_cp_id: 1, next_cp_id: 2, task_id: 1, order: 1)
#
Quest.create(name:"Star Craft: episode II", description:"Story from the world-wide-known game "+
	         "the zerg story", 
	         reward: 15, experience: 10, price: 0, start_id: 9, downloads: 0, 
	         logo: "SC-logo2.jpg")  # 1
# Checkpoint.create(quest_id: 1, parent_id: nil, description: "Who are you?") #9
PhotoTask.create(image: "kerrigan-art.jpg", answer: "Sarah Kerrigan")  # 2
Task.create(element: PhotoTask.find(2), showable: true, 
	        description: "You were ghost in the past, now - Queen of Blades "+
	        "Take a look on the photo - what is your full name?") # 2
PointTask.create(this_cp_id: 9, next_cp_id: 10, task_id: 2, order: 1)
# 
Checkpoint.create(quest_id: 1, parent_id: 1, description: "Save your army") # 2
PhotoTask.create(image: "Jimmy-barracks.jpg", answer: "476")    # 3
Task.create(element: PhotoTask.find(3), showable: true, 
	        description: "It's time to reopen your barracks, but you don't "+
	        "know secret key of the factory tools; Try to find it inside") # 3
PointTask.create(this_cp_id: 2, next_cp_id: 3, task_id: 3, order: 1)
# 
Checkpoint.create(quest_id: 1, parent_id: 2, description: "Human Machine") # 3
PhotoTask.create(image: "Jimmy-scv.jpeg", answer: "zergling")    # 4
PhotoTask.create(image: "Jimmy-scv.jpeg", answer: "SCV")    # 5
Task.create(element: PhotoTask.find(4), showable: true, 
	        description: "You've find some machinery, and now your barracks "+
	        "are under attack; which kind of units can you find here?") # 4
Task.create(element: PhotoTask.find(5), showable: true, 
	        description: "You've find some machinery, and now your barracks "+
	        "are under attack; which kind of units can you find here?") # 5
PointTask.create(this_cp_id: 3, next_cp_id: 4, task_id: 4, order: 1)
PointTask.create(this_cp_id: 3, next_cp_id: 5, task_id: 5, order: 1)
# 
Checkpoint.create(quest_id: 1, parent_id: 3, description: "Add a mind") # 4
PhotoTask.create(image: "Jimmy-mind.jpg", answer: "42")    # 6
Task.create(element: PhotoTask.find(6), showable: true, 
	        description: "With this SCV you can use a cind of artificial "+
	        "intelligence - adjutant; answer the Ultimate Question of Life, " +
	        "the Universe, and Everything") # 6
PointTask.create(this_cp_id: 4, next_cp_id: nil, task_id: 6, order: 1)
# 
Checkpoint.create(quest_id: 1, parent_id: 3, description: "Old friend") # 5
PhotoTask.create(image: "Jimmy-rory.jpg", answer: "Rory")    # 7
PhotoTask.create(image: "Jimmy-rory.jpg", answer: "Milo")    # 8
Task.create(element: PhotoTask.find(7), showable: true, 
	        description: "Old friend is a good friend, yeah? "+
	        "There are two persons here, hidden or not") # 7
Task.create(element: PhotoTask.find(8), showable: true, 
	        description: "Old friend is a good friend, yeah? "+
	        "There are two persons here, hidden or not") # 8
PointTask.create(this_cp_id: 5, next_cp_id: 6, task_id: 8, order: 1)
PointTask.create(this_cp_id: 5, next_cp_id: 7, task_id: 7, order: 1)
# 
Checkpoint.create(quest_id: 1, parent_id: 5, description: "Another one?") # 6
PhotoTask.create(image: "Jimmy-tychus.jpg", answer: "spade")    # 9
Task.create(element: PhotoTask.find(6), showable: true, 
	        description: "Another friend you have meet today, friend - not? "+
	        "What is the suit of the card on Tychus armor?") # 9
PointTask.create(this_cp_id: 6, next_cp_id: nil, task_id: 9, order: 1)
#
Checkpoint.create(quest_id: 1, parent_id: 5, description: "Hidden warior") # 7
PhotoTask.create(image: "Jimmy-ghost.jpg", answer: "ghost")    # 10
MarkerTask.create(lon: 100.0, lat: 100.0, radius: 3.0)  # 1
Task.create(element: PhotoTask.find(10), showable: true, 
	        description: "Time to start battle: what is the name of this "+
	        "warrior type?") # 10
Task.create(element: MarkerTask.find(1), showable: true, 
	        description: "He can easily launch nuclear missile; "+
	        "And you have to get him the target - go, dear!") # 11
PointTask.create(this_cp_id: 7, next_cp_id: nil, task_id: 10, order: 1)
PointTask.create(this_cp_id: 7, next_cp_id: 6, task_id: 11, order: 2)
# 
Checkpoint.create(quest_id: 1, parent_id:7, description: "Mass attacks") # 8
PhotoTask.create(image: "Jimmy-hammer.jpeg", answer: "149 600 000")    # 11
Task.create(element: PhotoTask.find(7), showable: true, 
	        description: "You even have a spaceship,  don't you know? "+
	        "Enter the distance to the nearest star in kilometers: ") # 12
PointTask.create(this_cp_id: 8, next_cp_id: nil, task_id: 12, order: 1)
# End of episode I
Checkpoint.create(quest_id: 2, parent_id: nil, description: "Who are you?") #9
#
