@user = User.create(email: "test@test.com", 
										password: "123456", 
										password_confirmation: "123456", 
										first_name: "potato", 
										last_name: "head",
										phone: "3852199769")

puts "1 user is HERE!"

AdminUser.create(email: "test@testy.com", 
									password: "123456", 
									password_confirmation: "123456", 
									first_name: "admin", 
									last_name: "head",
									phone: "3852199769")

puts "1 admin is HERE!"

30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 1.5)
end
puts "MADE POSTS!!! 30 of them."

30.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "STUFF HAS BEEN MADE!!! 30"