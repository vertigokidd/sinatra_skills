require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills

30.times do
  user_id_array = [1,2,3,4,5,6]
  skill_id_array = [1,2,3,4,5,6,7,8,9,10]
  years_array = [1,2,3,4,5]
  proficiency_array = ["beginner", "intermediate", "advanced"]
  user = User.find(user_id_array.sample)
  user.users_skills.create(skill_id: skill_id_array.sample,
  	                       proficiency: proficiency_array.sample,
  	                       years: years_array.sample)
end
