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
	        email:"optimum.flaminis@gmail.com", role:"client")
User.create(name: "Dann", surname: "Best", password_digest: pass2, salt: salt2, 
	        email:"anichindaniil@gmail.com", role:"admin")
Quest.create(name:"test Quest", description:"some description to show", 
	         reward: 10, experience: 10, price: 0, start_id: 1, downloads: 0, 
	         logo: "1.jpg")
Quest.create(name:"Dune", description:"Frenk Herbert, huh", reward: 15, 
	         experience: 15, price: 0, start_id: 2, downloads: 0,
	         logo: "2.jpg")
UserQuest.create(user_id: 1, quest_id: 1, checkpoint_id: 1)
UserQuest.create(user_id: 2, quest_id: 2, checkpoint_id: 2)
Checkpoint.create(quest_id:1, parent_id: nil, description: "first checkpoint")
Checkpoint.create(quest_id:1, parent_id: 1, description: "second")
Checkpoint.create(quest_id:2, parent_id: nil, description: "first from second")
Checkpoint.create(quest_id:2, parent_id: 3, description: "second second")

TextTask.create(text: "RUA wizard?", answer: "Yep")
PhotoTask.create(image: "Duke_of_?.jpg", answer: "flies")
Task.create(element: TextTask.find(1), showable: true, 
	        description: "The Binding..")
Task.create(element: PhotoTask.find(1), showable: true, 
	        description: "The Binding - 2..")
PointTask.create(this_cp_id: 1, next_cp_id: nil, task_id: 1, order: 1)
PointTask.create(this_cp_id: 1, next_cp_id: 2, task_id: 2, order: 2)