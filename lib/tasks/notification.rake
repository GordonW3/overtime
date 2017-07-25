namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    
    end
  end

 desc "Sends Mail notification to managers (admin users) each day to inform of pending overtime request"
  task manager_email: :environment do
		submitted_posts = Post.submitted
		admin_users = AdminUser.all

		if submitted_posts.count > 0
  		admin_users.each do |admin|
  			ManagerMailer.email(admin).deliver_later
  		end
  	end
  end
end
