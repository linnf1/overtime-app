@user = User.create!(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Regular", last_name: "User")

puts "1 User created"

AdminUser.create!(email: "admintest@test.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "User")

puts "1 Admin created"

30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "30 Posts have been created"