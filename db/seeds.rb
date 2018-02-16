@user = User.create!(email: "test@test.com", 
                     password: "123456", 
                     password_confirmation: "123456", 
                     first_name: "Regular", 
                     last_name: "User",
                     phone: "4444444444")

puts "1 User created"

AdminUser.create!(email: "admintest@test.com",
                  password: "123456", 
                  password_confirmation: "123456", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "22222222222")

puts "1 Admin created"

30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "30 Posts have been created"