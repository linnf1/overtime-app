AdminUser.create!(email: "admintest@test.com",
                  password: "123456", 
                  password_confirmation: "123456", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "1234567891")

puts "1 Admin created"

@user = User.create!(email: "test@test.com", 
                     password: "123456", 
                     password_confirmation: "123456", 
                     first_name: "Regular", 
                     last_name: "User",
                     phone: "1234567890")

puts "1 User created"



30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	user_id: @user.id, overtime_request: 2.5)
end

puts "30 Posts have been created"

30.times do |audit_log|
  AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "30 audit logs have been created"

