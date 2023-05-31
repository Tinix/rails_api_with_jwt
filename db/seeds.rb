users = []

if User.all == 0
  5.times do
    users = User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      username: Faker::Name.first_name,
      password: '123456',
      password_digest: '123456'
    )
    end
  else
  5.times do
    users = User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      username: Faker::Name.first_name,
      password: '123456',
      password_digest: '123456'
    )
  end
  puts "#{users.id} was created successfully."
end
