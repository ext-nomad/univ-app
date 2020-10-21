10.times do |n|
  name = Faker::Name.first_name
  email = "example-#{n + 1}@example.com"
  # password = 'password'
  User.create!(name: name, email: email, password: email)
end

30.times do
  # rand_id = Faker::Number.between(from: 2, to: 6)
  Course.create!([{
                   short_name: Faker::Educator.unique.course_name,
                   name: Faker::Educator.subject,
                   description: Faker::Lorem.paragraph(sentence_count: 5)
                 }])
end
