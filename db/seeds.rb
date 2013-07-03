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

skill_training = (1..7).to_a
skill_is_formal = [true, false]

6.times do |user|
  SkillLevel.create({user_id: (user + 1), skill_id: skill_training.sample, years_of_training: skill_training.sample, formal: skill_is_formal.sample})
end
