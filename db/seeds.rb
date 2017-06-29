@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "potato", last_name: "head")

puts "1 user is HERE!"

30.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "STUFF HAS BEEN MADE!!!"