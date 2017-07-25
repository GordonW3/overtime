@employee = Employee.create(email: "test@test.com", 
										password: "123456", 
										password_confirmation: "123456", 
										first_name: "potato", 
										last_name: "head",
										phone: "3852199769")

puts "1 employee is HERE!"

AdminUser.create(email: "test@testy.com", 
									password: "123456", 
									password_confirmation: "123456", 
									first_name: "admin", 
									last_name: "head",
									phone: "3852199769")

puts "1 admin is HERE!"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "STUFF HAS BEEN MADE!!! 3"

30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content of doom and distructionasdjs danasjkl d dkjdjsksk ssk sk ddk dkksa;fdlk;das j ds;sja sda;ljadfsjklfdsljsfd;jldfsajfds f. f fdjklfsdsf s fd fslsd lj sdj sdf jldf sja;j", user_id: @employee.id, overtime_request: 1.5)
end
puts "MADE POSTS!!! 30 of them."