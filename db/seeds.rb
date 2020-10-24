10.times do |n|
  name = Faker::Name.first_name
  email = "example-#{n + 1}@example.com"
  User.create!(name: name, email: email, password: email)
end

40.times do
  Course.create!([{
                   short_name: Faker::Educator.unique.course_name,
                   name: Faker::Educator.subject,
                   description: Faker::Lorem.paragraph(sentence_count: 10)
                 }])
end

def rand_id(from, to)
  Faker::Number.between(from: from, to: to)
end

30.times do
  UserCourse.create!([{ user_id: rand_id(1, 10), course_id: rand_id(1, 40) }])
end
