# User.create!(email: 'admin@x.com', password: 'admin@x.com', password_confirmation: 'admin@x.com', confirmed_at: DateTime.now)

# # user = User.new(
# #   email: 'admin@x.com',
# #   password: 'admin@x.com',
# #   password_confirmation: 'admin@x.com'
# # )
# # user.skip_confirmation!
# # user.save!

# 10.times do |n|
#   # name = Faker::Name.name name: name,
#   email = "example-#{n + 1}@example.com"
#   # password = 'password'
#   User.create!(email: email, password: email, password_confirmation: email, confirmed_at: DateTime.now)
# end

30.times do
  # rand_id = Faker::Number.between(from: 2, to: 6)
  Course.create!([{
                   short_name: Faker::Educator.unique.course_name,
                   name: Faker::Educator.subject,
                   description: Faker::Lorem.paragraph(sentence_count: 5)
                 }])
end
